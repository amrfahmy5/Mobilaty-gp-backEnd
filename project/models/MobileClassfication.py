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
"""
    def intializeModel(self):
       	from keras.models import Sequential
		from keras.layers import Conv2D
		from keras.layers import MaxPooling2D
		from keras.layers import Flatten
		from keras.layers import Dense

		import cv2
		import os
		import numpy as np
		from random import shuffle
		from tqdm import tqdm

		import keras_metrics
		from sklearn import preprocessing
		labelsNames=[]
		labelIndex = np.array(0)
		size = 0 ;
		def createLabelArray():
		    global size
		    global labelIndex
		    for brand in tqdm(os.listdir(TRAIN_DIR)):
		      if brand ==".git":
		        continue              
		      #if brand!=brandName:
		           #continue
		      for subCat in tqdm(os.listdir(TRAIN_DIR + '/' + brand)):
		        size=size+1
		        labelsNames.append(brand+"-"+subCat)
		    labelIndex = np.zeros(size)
		    
		def create_train_data():
		    training_data = []
		    
		    #pathes = []
		    j=0 
		    for brand in tqdm(os.listdir(TRAIN_DIR)):
		        if brand ==".git":
		          continue
		        #if brand!=brandName:
		           #continue
		        print(brand)
		        for subCat in tqdm(os.listdir(TRAIN_DIR + '/' + brand)):
		            print(TRAIN_DIR + '/' + brand)
		            #ia = os.listdir(TRAIN_DIR +'\\'+ brand + '\\' + subCat)[0]
		            for image in tqdm(os.listdir(TRAIN_DIR +'/'+ brand+ '/' + subCat +'/')):
		                
		                # print(image)
		                label = label_img(j)
		                try:
		                    #label = to_categorical(number, 10)
		                    image = cv2.imread(TRAIN_DIR + '/' +brand+'/' + subCat + '/' + '/' + image, cv2.IMREAD_UNCHANGED)
		                    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
		                        
		                    image = cv2.resize(image, (IMG_SIZE, IMG_SIZE))
		     
		                    training_data.append([np.array(image), np.array(label)])
		                    #print(labelIndex[j],"  ",labelsNames[j])
		                except Exception as e:
		                    print(str(e))
		            j=j+1
		    print("dataaa:"+str(len(training_data)))
		    shuffle(training_data)
		    return training_data  # pathes

		'''Labelling the dataset'''

		def label_img(number):
		  global labelIndex
		  labelIndex= np.zeros(size)
		  labelIndex[number] = 1
		  return labelIndex
		def prep_pixels(train, test , valid):
		  # convert from integers to floats
		  train_norm = train.astype('float32')
		  train_norm = (train_norm-train_norm.mean() )/255.0

		  test_norm = test.astype('float32')
		  test_norm = (test_norm-test_norm.mean() )/255.0

		  valid_norm = valid.astype('float32')
		  valid_norm = (valid_norm-valid_norm.mean() )/255.0
		  return train_norm, test_norm , valid_norm

		if __name__ == '__main__':

		    #TRAIN_DIR = 'C:\\Users\\new\\PycharmProjects\\new\\Dataset'
		    TRAIN_DIR =  'Phones-DataSet'#'drive/My Drive/ComingPhotos'
		    #TEST_DIR = 'F:\\Level 4 Term 1\\Sign-Language-Digits-Dataset-master\\Examples'
		    IMG_SIZE = 100
		    LR = 1e-3
		    

		    #brandName = " "#input("enter BrandName:")
		    createLabelArray()
		    dataset = create_train_data()

		    train = dataset[:int(len(dataset) * 0.6)]
		    test = dataset[int(len(dataset) * 0.6):int(len(dataset) * 0.8)]
		    validate = dataset[int(len(dataset) * 0.8):]

		    X_train = np.array([i[0] for i in train]).reshape(-1, IMG_SIZE, IMG_SIZE, 3)
		    #X_train = X_train.astype('float32')
		    #X_train /= 255
		    Y_train = np.array([i[1] for i in train])

		    print(str(X_train.size))
		    X_test = np.array([i[0] for i in test]).reshape(-1, IMG_SIZE, IMG_SIZE, 3)
		    #X_test = X_test.astype('float32')
		    #X_test /= 255
		    Y_test = np.array([i[1] for i in test])
		 
		    print(str(X_test.size))
		    X_valid = np.array([i[0] for i in validate]).reshape(-1, IMG_SIZE, IMG_SIZE, 3)
		    #X_valid = X_valid.astype('float32')
		    #X_valid /= 255
		    Y_valid = np.array([i[1] for i in validate])

		    print(str(X_valid.size))
		    X_train , X_test ,X_valid = prep_pixels(X_train ,X_test,X_valid)

		    print("# ###################First Archetecture ######################################")
		    Model = Sequential()

		    Model.add(Conv2D(32, kernel_size=3, activation='relu'))
		    Model.add(MaxPooling2D(pool_size=(2, 2)))

		    Model.add(Conv2D(64, kernel_size=3, activation='relu'))
		    Model.add(MaxPooling2D(pool_size=(2, 2)))

		    Model.add(Flatten())
		    Model.add(Dense(64, activation='relu'))
		    Model.add(Dense(128, activation='relu'))
		    Model.add(Dense(size, activation='softmax'))
		    
		    import keras_metrics

		    # Compiling The Model
		    Model.compile(optimizer="adam", loss="categorical_crossentropy",
		                  metrics=[keras_metrics.precision(), keras_metrics.recall(), keras_metrics.f1_score(), 'accuracy'])
		    Model.fit(X_train, Y_train, validation_data=(X_valid, Y_valid), epochs=10)
		    print("###################################################################")
		    scores = Model.evaluate(X_test, Y_test)
		    print("%s: %.2f%%" % (Model.metrics_names[1], scores[1] * 100));
		    print("%s: %.2f%%" % (Model.metrics_names[2], scores[2] * 100));
		    print("%s: %.2f%%" % (Model.metrics_names[3], scores[3] * 100));
		    print("%s: %.2f%%" % (Model.metrics_names[4], scores[4] * 100));

		    Model.save("drive/My Drive/model.h5")
"""
