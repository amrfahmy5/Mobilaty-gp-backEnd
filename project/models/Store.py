from flask import jsonify
import os
from project.models import connnT , cursorT
class Store:

    def __init__(self):
        self.conn = connnT
        self.cursor = cursorT

    def add_store(self, params,user_id):
        self.cursor.execute("INSERT INTO mobilaty.store" +
                            " (store_name , store_descreption  , address,user_id)" +
                            " VALUES ('" + params['store_name'] + "','" + params['store_descreption'] +
                             "','" + params['store_address'] + "','"+str(user_id)+"')")
        self.conn.connection.commit()
        self.cursor.execute("SELECT LAST_INSERT_ID()")
        row = self.cursor.fetchone();
        return row


    def update_store(self, storeName,storeDesc,storeAddress,storeID,imgPath):
        self.cursor.execute("update mobilaty.store set store_name = '" + storeName
        + "' , store_descreption = '" + storeDesc 
        + "', store_img= '" +imgPath 
        + "' , address= '" +storeAddress 
        + "'  where store_id = '" + storeID+"'")
        self.conn.connection.commit()


    def show_store(self, params):
        self.cursor.execute('SELECT * FROM mobilaty.store WHERE store_id = ' + params.args.get('store_id') + " ORDER BY RAND()")
        row = self.cursor.fetchall()
        return row

        
    def updateRate(self,params):
        store_id = params.args.get('store_id') 
        rate = params.args.get('rate') 
        self.cursor.execute('SELECT store.rate , store.rateCounter FROM mobilaty.store WHERE store_id = ' + store_id + " ORDER BY RAND()")
        row = self.cursor.fetchone()
        rate= row['rate']
        rateCount= int(row['rateCounter'])
        rateCount+=1
        rate+=int(params.args.get('rate'))
        rate/=rateCount
        row['rate']=rate
        row['rateCounter']=rateCount
        sql = "update mobilaty.store set rate= "+ str(rate) +" , rateCounter = "+ str(rateCount)+"   where store_id = '" + store_id+ "'"
        self.cursor.execute(sql)
        self.conn.connection.commit()

        return 200


    def upload_store_image(self,request,storeID):
        if(request.files['store_img'] ==''):
            return ''
        self.execution_path = os.getcwd()
        self.fullPath=os.path.join(self.execution_path, 'project/public/storeImages')
        self.f = request.files['store_img']  
        self.f.save(os.path.join(self.fullPath, str(storeID)+"-"+self.f.filename))
        return 'storeImages/'+str(storeID)+"-"+self.f.filename
#------------------------- future work(frontEnd)------------------------------ params.args.get('store_id')
    def delete_store(self, params):
        self.cursor.execute('DELETE FROM  mobilaty.store WHERE store_id= ' + params.args.get('store_id'))
        self.conn.connection.commit()
        # row = cursor.fetchone()

    def show_AllStore(self):
        self.cursor.execute('SELECT * FROM mobilaty.store')
        row = self.cursor.fetchall()
        return row
