from flask import jsonify
import os
from project.models import connnT , cursorT
class Post:

    def __init__(self):
        self.conn = connnT
        self.cursor = cursorT

    def add_post(self, porestDesc,storeID,imgPath):
        self.cursor.execute("INSERT INTO mobilaty.post" +
                            " (post_description , post_img ,store_id)" +
                            " VALUES ('" + porestDesc + "','" +imgPath +
                            "','" + storeID + "')")
        self.conn.connection.commit()


    def show_AllPost(self):
        self.cursor.execute('select post.* ,comment.comment_body  ,store.* , user.*  from post LEFT OUTER JOIN comment  on post.post_id  = comment.post_id  JOIN store ON store.store_id = post.store_id LEFT OUTER JOIN user ON user.id = comment.user_id')
        
        row = self.cursor.fetchall()
        return row


    def show_store_post(self, params):
        self.cursor.execute('select post.* ,comment.comment_body  ,store.* , user.* ,COUNT(comment_id) from post LEFT OUTER JOIN comment  on post.post_id  = comment.post_id JOIN store ON store.store_id = post.store_id JOIN user ON user.id = comment.user_id WHERE store.store_id = ' + params.args.get('store_id') + " ORDER BY RAND()")
        row = self.cursor.fetchall()
        return row



    def upload_post_images(self,request,storeID):
        if(request.files['post_img'] ==''):
            return ''
        self.execution_path = os.getcwd()
        self.fullPath=os.path.join(self.execution_path, 'project/public/postImages/store-'+str(storeID))
        if not os.path.exists(self.fullPath):
            os.makedirs(self.fullPath)
        self.f = request.files['post_img']  
        self.f.save(os.path.join(self.fullPath, self.f.filename))
        return 'postImages/store-'+str(storeID)+"/"+self.f.filename

#-------------------------------------------- future work -------------------------------------
 
    def delete_post(self, params):
        try:
            self.cursor.execute('DELETE FROM  mobilaty.post WHERE post_id= ' +str(params.args.get('post_id')))
            self.conn.connection.commit()
        except ValueError:
            return ValueError

    def update_post(self, params):
        self.cursor.execute("update mobilaty.post set post_description = '" +
                            params['post_description'] + "', post_img= '" +
                            params['post_img'] + "'   where post_id = " + str(params['post_id']))
        self.conn.connection.commit()
