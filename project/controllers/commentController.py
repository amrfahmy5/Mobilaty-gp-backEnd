from __future__ import print_function  # In python 2.7
import sys
from project import app
from flask import render_template, redirect, url_for, jsonify, request

from project.models.Comment import Comment

comment = Comment()


@app.route('/comment', methods=['GET'])
def index():
    try:
        response = jsonify(comment.show_comment(request))
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response



@app.route('/comment/create', methods=['POST'])
def Create():
    try:
        comment.add_comment(request.get_json())
        print('Create Comment!', file=sys.stderr)
        response = jsonify(200)
        response.status_code = 200
    except Exception as e:
        response = jsonify(str(e))
        response.status_code = 500
    return response



#-----------------------------------future work(frontend)---------------------------
@app.route('/comment/update', methods=['POST'])
def update():
    comment.update_comment(request.json)
    print('Update Comment!', file=sys.stderr)
    return jsonify(200)


@app.route('/comment/delete', methods=['GET'])
def Delete():
    comment.delete_comment(request)
    print('Delete Comment!', file=sys.stderr)
    return jsonify(200)