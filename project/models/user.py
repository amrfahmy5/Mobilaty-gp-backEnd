from flask import jsonify, session
import bcrypt
from project.models import connnT , cursorT

class User:

    def __init__(self):
        self.conn = connnT
        self.cursor =cursorT


    def LogIn(self, params):
        userName=params.args.get('username')
        pw = params.args.get('password') 
        self.cursor.execute('SELECT * FROM mobilaty.user LEFT OUTER JOIN store on user.id = store.user_id WHERE name = "' + userName + ' " and password = "'+pw+'"')
        row = self.cursor.fetchone()
        if not row :
            return 404
        return row
    def Signup(self, params):
        age = "'{}'".format(params['age'])
        Type = "'{}'".format(params['type'])
        password = "'{}'".format(params['password'])
        self.cursor.execute("INSERT INTO mobilaty.user" +
                            " (name, email,password,age,address,type)" +
                            " VALUES ('" + params['name'] + "','" + params['email'] + "'," + password
                            + "," + age + ",'" + params['address'] + "'," +Type  + ")")
        self.conn.connection.commit()
        self.cursor.execute("SELECT LAST_INSERT_ID()")
        row = self.cursor.fetchone();
        return row
#-------------------------------future work(frontEnd)---------------------
    def getAllUsers(self):
        self.cursor.execute('SELECT * FROM mobilaty.user')
        row = self.cursor.fetchall()
        return row

    def getUserById(self, params):
        self.cursor.execute('SELECT * FROM mobilaty.user WHERE id = ' + params['id'])
        row = self.cursor.fetchall()
        return row


    def removeuser(self, params):
        self.cursor.execute('DELETE FROM  mobilaty.user WHERE id = ' + params['id'])
        self.conn.connection.commit()

    def finduserByUserName(self, params):
        val = "'{}'".format(params.args.get('username'));
        self.cursor.execute('SELECT * FROM  mobilaty.user where name =' + val)

        row = self.cursor.fetchone()

        return row

    def hashfun(self, password):

        hashed = bcrypt.hashpw(password, bcrypt.gensalt())
        return hashed

    def compare(userPassword, hashPassword):
        if bcrypt.checkpw(userPassword, hashPassword):
            return True
        else:
            return False
