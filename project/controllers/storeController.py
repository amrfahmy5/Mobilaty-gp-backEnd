from __future__ import print_function  # In python 2.7
import sys
from project import app
from flask import render_template, redirect, url_for, jsonify, request
import numpy as np
import pandas as pd
import os

from project.models.Store import Store
from project.models.RecommendStore import RecommendStore
from project.models.Post import Post


store = Store()
recommendStore = RecommendStore()
post = Post()



execution_path = os.getcwd()
storeImagesFOlder=os.path.join(execution_path, "project/public/storeImages")



@app.route('/store/update', methods=['POST'])
def update_store():
    try:
        storeName= request.form['store_name'] 
        storeDesc= request.form['store_descreption']    
        storeAddress= request.form['address']
        storeID= request.form['store_id']
        imgPath=store.upload_store_image(request,storeID)
        store.update_store(storeName,storeDesc,storeAddress,storeID,imgPath)
        response = jsonify(200)
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response




@app.route('/store', methods=['GET'])
def index_store():
    try:
        print(request.args.get('store_id'))
        storeInfo = store.show_store(request)
        storePosts = post.show_store_post(request)
        response = jsonify({'storeInfo':storeInfo,'storePosts':storePosts})
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response



@app.route('/recommendStore', methods=['GET'])
def recommend_store():
    try:
        response = recommendStore.run(request,20)
        # response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


@app.route('/updateRate', methods=['GET'])
def updateRate():
    try:
        response = jsonify(store.updateRate(request))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response
#------------------------------------------future work(frontend)---------------------------------

@app.route('/store/create', methods=['POST']) #done with signup
def Create_store():
    data = request.get_json()
    store.add_store(data,'')
    return jsonify(200)


@app.route('/store/delete', methods=['GET'])
def Delete_store():
    store.delete_store(request)
    print('Delete store!', file=sys.stderr)
    return jsonify(200)

@app.route('/showAllStores', methods=['GET'])
def showStore():
    return jsonify(store.show_AllStore())