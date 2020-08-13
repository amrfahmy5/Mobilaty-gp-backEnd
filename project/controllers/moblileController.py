from __future__ import print_function
from project import app
from flask import render_template, redirect, url_for, jsonify, request,Flask,send_file

import os

from project.models.mobile import Mobile
import sys
from project.models.CropVideo import CropVideo
from project.models.PredictPrice import PredictPrice
from project.models.RecommendMobile import RecommendMobile

from project.models.MobileClassfication import mobileClassfication


Recommender = RecommendMobile()
MC = mobileClassfication()
mobile = Mobile()


def ReturnMobiles(Arr_imgs, imgs):
    Mobiles = MC.Mobile_Classifier(Arr_imgs, imgs)
    for indx in range(len(Mobiles)):
        Prob = Mobiles[indx][1]
        print( Mobiles[indx][0])
        Mobiles[indx] = mobile.show_mobileN({"mobile_name": Mobiles[indx][0]})
        Mobiles[indx].append(Prob)
    return Mobiles


@app.route('/mobileName', methods=['POST'])
def show_mobileN():
    print('show mobile Name', file=sys.stderr)
    data = request.get_json()
    try:
        response = jsonify(mobile.show_mobileN(data))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


@app.route('/classifiy_phone', methods=['POST'])
def Classifiy_phone():
    try:
        data = request.get_json()
        Mobiles = ReturnMobiles(data["Arr_imgs"], data["imgs"])
        response = jsonify(Mobiles)
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response




@app.route('/mobile/findByMobileId', methods=['POST'])
def findByMobileId():
    try:
        data = request.get_json()
        response = jsonify(mobile.findByMobileId(data))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


@app.route('/Allmobile', methods=['GET'])
def showAllmobile():
    print('show mobiles', file=sys.stderr)
    try:
        response = jsonify(mobile.show_AllMobile())
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response

# Upload Photos

path = os.getcwd()
parent = os.path.dirname(path)
Base_path = os.path.join(parent, 'Mobilaty\\project\\public')
UPLOAD_FOLDER = Base_path


cropVideo = CropVideo()
predictPrice = PredictPrice()
@app.route('/uploadphoto', methods=['POST'])
def upload_file():
    try:
        path = os.getcwd()
        if request.method == 'POST':
            f = request.files['file']
            f.save(os.path.join(Base_path, f.filename))
        response = os.path.join(Base_path, f.filename) 
        #response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response



@app.route('/recommendMobile', methods=['POST'])
def Recommend_Mobile():
    try:
        data = request.get_json()
        response = Recommender.recommend(data['display_size'] + data['battary'], 20)
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


#----------------------------------------------------amr--------------------------------------
@app.route('/croped_video', methods=['POST'])
def crop_video():
    try:
        videName= cropVideo.upload_video(request);
        images=cropVideo.run(videName)
        #MC.Mobile_Classifier([],images)
        response = jsonify(MC.Mobile_Classifier([],images))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


@app.route('/predictPrice', methods=['POST'])
def predict_price():
    try:
        data = request.get_json()
        response = jsonify(predictPrice.run(data))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response

@app.route('/getImage', methods=['GET'])
def post_image():
    try:
        imagePath="public/"+request.args.get('imagePath')
        return send_file(imagePath, 'image/png',attachment_filename="test")
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
        return response
    


#---------------------------------------------future work(front end)---------------------------
@app.route('/mobile/create', methods=['POST'])
def Create_mobile():
    data = request.get_json()
    mobile.add_mobile(data)
    print('Create mobile!', file=sys.stderr)
    return jsonify('done')


@app.route('/mobile/update', methods=['POST'])
def Update_mobile():
    data = request.get_json()
    mobile.update_mobile(data)
    print('Update mobile!', file=sys.stderr)
    return jsonify('done')


@app.route('/mobile/delete', methods=['POST'])
def Delete_mobile():
    data = request.get_json()
    mobile.delete_mobile(data)
    print('Delete mobile!', file=sys.stderr)
    return jsonify('done')
