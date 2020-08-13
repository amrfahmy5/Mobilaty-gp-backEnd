import numpy as np
import pandas as pd 

import os

from flask import jsonify

from project.models.Store import Store
store = Store()


class RecommendStore:
    def __init__(self):
        pass

    def formatInput(self,request):
        self.execution_path = os.getcwd()
        self.user_Xaxis=float(request.args.get('x_axis'))
        self.user_Yaxis=float(request.args.get('y_axis'))
        self.user_rate=int(request.args.get('rate'))
        self.a = np.array((self.user_Xaxis ,self.user_Yaxis, self.user_rate))
        self.rate = False if (self.user_rate==-1) else True 
        self.location = False if (self.user_Xaxis==0 and self.user_Yaxis==0) else True 

    
    def Eculidian_Distance(self,x,y,r):
        b = np.array((x, y, r))
        return  np.linalg.norm(self.a-b)


    def initTrainDataCSV(self):
        self.trainData = pd.read_csv(os.path.join(self.execution_path,'project/public/models/recommend_store/storesTest.csv'))
        self.x_train =self.trainData.iloc[:,:].values

    def initTrainDataDB(self):
        self.trainData=store.show_AllStore()
        self.x_train=[]
        
        for item in self.trainData:
            arr=[]
            arr.append(item['store_id'])
            arr.append(item['store_name'])
            arr.append(item['store_descreption'])
            arr.append(item['store_img'])
            arr.append(item['address'])
            arr.append(item['latitude'])
            arr.append(item['longitude'])
            arr.append(item['rate'])
            arr.append(item['user_id'])
            self.x_train.append(arr)


    def sortSecond(self,val): 
        return val[1]  


    def run(self,request,requieStoreCount):
        
        self.formatInput(request)
        # self.initTrainDataCSV()   should repalce x_train[i,-3] >> etc for all in for i in range(len...)
        self.initTrainDataDB()  
        requieStoreCount = requieStoreCount if (len(self.trainData)>=requieStoreCount) else len(self.trainData)
        self.output=[]
        self.response=[]
        for i in range(len(self.trainData)):
            self.output.append((i,self.Eculidian_Distance(self.location*self.x_train[i][-3],
                        self.location*self.x_train[i][-2],self.rate*self.x_train[i][-1])))
        
        self.output.sort(key = self.sortSecond)
        for i in range(requieStoreCount):
            self.response.append(self.x_train[self.output[i][0]])
        # print(self.response)
        columnsTitle= ['store_id','store_name','store_description','store_img','address','latitude','longitude','rate','user_id']
        dataFrame = pd.DataFrame(self.response, columns=columnsTitle)
        self.response = dataFrame.to_json(orient='records')
        return self.response

    






