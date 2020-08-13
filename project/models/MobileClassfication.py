import pandas as pd
import os
import cv2
import numpy as np
from keras.models import load_model
import keras_metrics
import keras

# path = os.getcwd()
# parent = os.path.dirname(path) 
# Base_path = os.path.join(parent , 'Mobilaty\\project\\public')
execution_path = os.getcwd()
Base_path=os.path.join(execution_path,'project/public/models/mobile_classfication')
class mobileClassfication:
    def __init__(self):
        pass
    def Init(self):
        self.Arr = []
        self.IMG_SIZE = 100
        class_path = os.path.join(Base_path,'ClassesNames.csv')
        class_path = class_path.replace("\\","/")
        self.Classes = pd.read_csv(class_path)
        self.Classes = self.Classes['Classes']
        self.Classes = [i for i in self.Classes]
        self.Result =[]
        self.model= None
    def RefreshModel(self,img):
        class_path = os.path.join(Base_path,'model.h5')
        class_path = class_path.replace("\\","/")
        with keras.backend.get_session().graph.as_default():
            self.model = load_model(class_path,custom_objects={"binary_precision": keras_metrics.precision(),
            "binary_recall":keras_metrics.recall(),"binary_f1_score":keras_metrics.f1_score()})
            return self.model.predict_proba(img)
        
    def Mobile_Classifier(self,ArrImgs,Imgs):
        self.Init()
        #self.RefreshModel()
        print(ArrImgs)
        if len(ArrImgs) != 0:
            for img in ArrImgs:
                img = img.replace("\\","/")
                self.Arr.append(cv2.imread(img))
        else:
            for img in Imgs:
                self.Arr.append(np.asarray(img))
        # summarize model.
        #self.model.summary()
        for img in self.Arr:
            img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)                
            img = cv2.resize(img, (self.IMG_SIZE, self.IMG_SIZE))
            img =np.array(img).reshape(-1, self.IMG_SIZE, self.IMG_SIZE, 3)
            predictions = self.RefreshModel(img)
            Max_Prob = np.max(predictions)
            index = 0
            print(predictions)
            for x in predictions[0]:
                if x == Max_Prob:
                    break
                index +=1
            #index, = np.where(np.isclose(predictions, Max_Prob))
            ClassName = self.Classes[index]
            self.Result.append((ClassName , str(Max_Prob)))
        #predictions = pd.Series([predictions]).to_json(orient='values')
        #self.mode = None
        return self.Result