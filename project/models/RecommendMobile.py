import pandas as pd
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import CountVectorizer
from pandas import DataFrame

import os


class RecommendMobile:
    def __init__(self):
        pass
    def intiatModel(self):
        self.parent = os.path.dirname(os.getcwd())
        self.execution_path = os.getcwd()
        self.dataset = pd.read_csv(os.path.join(self.execution_path,'project/public/models/recommend_mobile/Data_ExcelM.csv'))
        
        

    def recommend(self, input_features, number_of_recommended_records):
        '''
         recommended Mobiles based on some feature similarity
        :param input_features:
        :param number_of_recommended_records:
        :return: Object[]
        '''
        self.intiatModel()
        count = CountVectorizer()
        features = self.dataset['display_size'] + self.dataset['battary']
        count_matrix = count.fit_transform(features)
        # generating the cosine similarity matrix
        cosine_sim = cosine_similarity(count_matrix, count_matrix)
        indices = pd.Series(self.dataset['display_size'] + self.dataset['battary'])
        # initializing the empty list of recommended mobile
        recommended_mobile = []
        idx = indices[indices == input_features].index[0]
        score_series = pd.Series(cosine_sim[idx]).sort_values(ascending=False)
        top_n_indexes = list(score_series.iloc[1:number_of_recommended_records + 1].index)

        # populating the list with the titles of the best 10 matching mobile
        for i in top_n_indexes:
            recommended_mobile.append(list(self.dataset.index)[i])
        result = []
        for ii in range(len(recommended_mobile)):
            result.append(self.dataset.iloc[recommended_mobile[ii]].values)
        dataFrame = DataFrame(result, columns=list(self.dataset.columns))
        result = dataFrame.to_json(orient='records')
        return result
