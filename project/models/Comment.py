from project.models import connnT , cursorT
from flask import jsonify


class Comment:

    def __init__(self):
        self.conn = connnT
        self.cursor = cursorT

    def add_comment(self, params):
        val1 = "'{}'".format(params['user_id']);
        val2 = "'{}'".format(params['post_id']);
        print("INSERT INTO mobilaty.comment" ,
                            " (post_id, comment_body,user_id)"  ,
                            " VALUES ('"  , params['post_id']  ,"','"  ,params['comment_body'] ,
                            "','" ,params['user_id'] , "')")
        self.cursor.execute("INSERT INTO mobilaty.comment" 
                            " (post_id, comment_body,user_id)" +
                            " VALUES (" +val2 + ",'" + params['comment_body'] +
                            "'," +val1 + ")")

        self.conn.connection.commit()

    def show_comment(self, params):
        self.cursor.execute('SELECT * FROM mobilaty.comment join mobilaty.user ON user.id=comment.user_id WHERE post_id = "'
                            + params.args.get('post_id')+ '" ORDER BY RAND()')
        row = self.cursor.fetchall()
        return row

#-----------------------------------future work (frontend)-----------------------------------
    def update_comment(self, params):
        self.cursor.execute("update mobilaty.comment set comment_body = '" +
                            params['comment_body'] + "' where comment_id = '" + str(params['comment_id']) + "'")
        self.conn.connection.commit()
        # row = cursor.fetchone()

    def delete_comment(self, params):
        self.cursor.execute('DELETE FROM  mobilaty.comment WHERE comment_id = ' + params.args.get('comment_id'))
        self.conn.connection.commit()
        # row = cursor.fetchone()