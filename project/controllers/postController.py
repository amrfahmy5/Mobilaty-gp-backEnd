from __future__ import print_function  # In python 2.7
import sys
from project import app
from flask import render_template, redirect, url_for, jsonify, request
import os


from project.models.Post import Post

post = Post()


execution_path = os.getcwd()
postImagesFOlder=os.path.join(execution_path, "project/public/postImages")


@app.route('/post/Allpost', methods=['GET'])
def show_post():
    print('show posts', file=sys.stderr)
    try:
        response = jsonify(post.show_AllPost())
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response


    
@app.route('/post/create', methods=['POST'])
def Create_post():
    try:
        postDesc= request.form['post_description'] 
        storeID= request.form['store_id'] 
        img_path = post.upload_post_images(request,storeID)
        post.add_post(postDesc,storeID,img_path)
        response = jsonify(200)
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response

@app.route('/testCPUS' , methods = ['GET'])
def upload_file1():
    return render_template('upload.html')



# -------------------------------------------------- future work(frontend)--------------------------------

@app.route('/post/update', methods=['POST'])
def update_post():
    data = request.get_json()
    post.update_post(data)
    print('Update post!', file=sys.stderr)
    return jsonify(200)


@app.route('/post/delete', methods=['GET'])
def Delete_post():
    post.delete_post(request)
    print('Delete post!', file=sys.stderr)
    return jsonify(200)


@app.route('/storePosts', methods=['GET'])
def indexPost():
    response = jsonify(post.show_store_post(request))
    response.status_code = 200
    return response