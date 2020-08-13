from __future__ import print_function  # In python 2.7
import sys
from project import app
from flask import render_template, redirect, url_for, jsonify, request
import json
from project.models.user import User
from project.models.Store import Store

user = User()
store = Store()

@app.route('/login', methods=['GET'])
def LogIn():
    try:
        userInfo=user.LogIn(request)
        response = jsonify(userInfo)
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response



@app.route('/signup', methods=['POST'])
def Signup():
    try:
        print('SignupPost', file=sys.stderr)
        data = request.get_json()
        user_id=user.Signup(data)
        store_id=-1
        if(data['type']=='1'):#store
            store_id=store.add_store(data,user_id['LAST_INSERT_ID()'])['LAST_INSERT_ID()']
        response = jsonify({"user_id":user_id['LAST_INSERT_ID()'],"store_id":store_id,"user_name":data['name']})
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response




#---------------------------future work(frontEnd)------------------
@app.route('/removeuser', methods=['POST'])
def remove_user():
    print('removeuser', file=sys.stderr)
    data = request.get_json()
    user.removeuser(data)
    return jsonify("Done!")

@app.route('/getuserbyid', methods=['POST'])
def get_User_By_Id():
    print('get_All_Users', file=sys.stderr)
    data = request.get_json()
    return jsonify(user.getUserById(data))


@app.route('/finduserByUserName', methods=['GET'])
def find_user_By_User_Name():
    data = request
    return jsonify(user.finduserByUserName(data))