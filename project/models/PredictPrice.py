import os
import numpy as np
import flask


from sklearn.externals import joblib
import pandas as pd

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 


class PredictPrice:
    def __init__(self):
        pass
    def initModel(self):
        self.execution_path = os.getcwd()
        self.pipe = joblib.load(os.path.join(self.execution_path,'project/public/models/predict_price/predictPrice.pkl'))

    def formatInput(self,request):
        self.arr= np.zeros(21)
        self.arr[0]=float(0)
        self.arr[1]=float(request['battery_power'])
        self.arr[2]=float(request['blue'])
        self.arr[3]=float(request['clock_speed'])
        self.arr[4]=float(request['dual_sim'])
        self.arr[5]=float(request['fc'])
        self.arr[6]=float(request['four_g'])
        self.arr[7]=float(request['int_memory'])
        self.arr[8]=float(request['m_dep'])
        self.arr[9]=float(request['mobile_wt'])
        self.arr[10]=float(request['n_cores'])
        self.arr[11]=float(request['pc'])
        self.arr[12]=float(request['px_height'])
        self.arr[13]=float(request['px_width'])
        self.arr[14]=float(request['ram'])
        self.arr[15]=float(request['sc_h'])
        self.arr[16]=float(request['sc_w'])
        self.arr[17]=float(request['talk_time'])
        self.arr[18]=float(request['three_g'])
        self.arr[19]=float(request['touch_screen'])
        self.arr[20]=float(request['wifi'])

    
    def run(self,request):
        self.initModel()
        self.formatInput(request)
        
        self.pred =self.pipe.predict([self.arr])
        print(int(self.pred))
        return int(self.pred)

    

    def buildModel(self):
        data = pd.read_csv('train.csv')
        x = data.iloc[:, :-1].values
        y = data.iloc[:, -1].values
        m, n = len(x), len(x[0])+1
        x = np.append(arr = np.ones((m, 1)).astype(int), values = x, axis = 1)

        from sklearn.model_selection import train_test_split
        x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2)

        from sklearn.pipeline import make_pipeline
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.externals import joblib

        pipe = make_pipeline(StandardScaler(), LogisticRegression())
        pipe.fit(x_train, y_train)
        y_pred = pipe.predict(x_train)

        print(pipe.score(x_train, y_train))#0.975625
        print(pipe.score(x_test, y_test)) #0.965

        joblib.dump(pipe, 'predictPrice.pkl')
