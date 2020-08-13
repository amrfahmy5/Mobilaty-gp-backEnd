from project.models import connnT , cursorT

import os
from imageai.Detection import ObjectDetection
from imageai.Detection import VideoObjectDetection
import requests
import cv2
import shutil

path = os.getcwd()
parent = os.path.dirname(path)
image_path = os.path.join(parent, 'Mobilaty\\project\\public\\temp.jpeg')
Base_Video_path = os.path.join(parent, 'Mobilaty\\project\\public')

counter = 0
input_video = ""
y = 0

class Mobile:

    def __init__(self):
        self.conn = connnT
        self.cursor = cursorT

    def show_mobileN(self, params):
        val = "'{}'".format(params['mobile_name'])
        self.cursor.execute('SELECT * FROM mobilaty.mobile WHERE mobile_name = ' + val + " ORDER BY RAND()")
        row = self.cursor.fetchall()
        return row

    def show_AllMobile(self):
        self.cursor.execute('SELECT * FROM mobilaty.mobile')
        row = self.cursor.fetchall()
        print(row)
        return row
    def findByMobileId(self, params):
        val = "'{}'".format(params['mobile_id'])
        self.cursor.execute('SELECT * FROM mobilaty.mobile WHERE mobile_id = ' + val)
        row = self.cursor.fetchall()
        return row

#-----------------------------------------------------future work (frontEnd)-----------------------------

    def add_mobile(self, params):
        val = "'{}'".format(params['mobile_id'])
        val2 = "'{}'".format(params['cat_id'])
        self.cursor.execute("INSERT INTO mobilaty.mobile" +
                            "(mobile_id , mobile_name ,cat_id,display_size,main_camera,selfie_camera,chipset,"
                            "storage_and_ram,battary,price)" +
                            " VALUES (" + val + ",'" + params['mobile_name'] +
                            "'," + val2 + ",'" + params['display_size'] + "','" + params['main_camera']
                            + "','" + params['selfie_camera'] + "','" + params['chipset'] + "','" + params[
                                'storage_and_ram']
                            + "','" + params['battary'] + "','" + params['price'] + "')")
        self.conn.connection.commit()

    def delete_mobile(self, params):
        val = "'{}'".format(params['mobile_id'])
        self.cursor.execute('DELETE FROM  mobilaty.mobile WHERE mobile_id= ' + val)
        self.conn.connection.commit()
        # row = cursor.fetchone()
    def update_mobile(self, params):
        val = "'{}'".format(params['mobile_id'])
        val2 = "'{}'".format(params['cat_id'])
        self.cursor.execute("update mobilaty.mobile set mobile_name = '" +
                            params['mobile_name'] + "'and cat_id= " +
                            params['cat_id'] +
                            + " and display_size= '" + params['display_size']
                            + "'and main_camera= '" + params['main_camera']
                            + "'and selfie_camera= '" + params['selfie_camera']
                            + "'and chipset= '" + params['chipset']
                            + "'and storage_and_ram= '" + params['storage_and_ram']
                            + "'and battary= '" + params['battary']
                            + "'and price= '" + params['price'] + "' where mobile_id = " + val)
        self.conn.connection.commit()
    def buildDB(self):
        a=pd.read_csv('phone_dataset .csv', error_bad_lines=False)
        b=pd.read_csv('Data_ExcelM.csv', error_bad_lines=False)
        b.rename(columns={"name": "model"},inplace = True) 
        merged = a.merge(b, on='model')
        merged = merged.replace(np.nan, 'None', regex=True)
        for index, row in merged.iterrows():
            sql =str("INSERT INTO `mobile`(`mobile_name`, `category_name`, `display_size`, `main_camera`, `selfie_camera`, `chipset`, `storage_and_ram`, `battary`, `price`, `network_technology`, `2G_bands`, `3G_bands`, `4G_bands`, `network_speed`, `GPRS`, `EDGE`, `announced`, `status`, `dimentions`, `weight_g`, `weight_oz`, `SIM`, `display_type`, `display_resolution`, `OS`, `CPU`, `GPU`, `memory_card`, `internal_memory`, `RAM`, `loud_speaker`, `audio_jack`, `WLAN`, `bluetooth`, `GPS`, `NFC`, `radio`, `USB`, `sensors`, `colors`, `approx_price_EUR`, `img_url`) VALUES ")
            sql+='("'+row.model+'",'
            sql+='"'+str(row.brand_x)+'",'
            sql+='"'+str(row.display_size_x)+'",'
            sql+='"'+str(row.main_camera)+'",'
            sql+='"'+str(row.selfie_camera)+'",'
            sql+='"'+str(row.Chipset)+'",'
            sql+='"'+str(row.storage_and_ram)+'",'
            sql+='"'+str(row.battery)+'",'
            sql+='"'+str(row.price)+'",'
            sql+='"'+str(row.network_technology)+'",'
            sql+='"'+str(row['2G_bands'])+'",'
            sql+='"'+str(row['3G_bands'])+'",'
            sql+='"'+str(row['4G_bands'])+'",'
            sql+='"'+str(row.network_speed)+'",'
            sql+='"'+str(row.GPRS)+'",'
            sql+='"'+str(row.EDGE)+'",'
            sql+='"'+str(row.announced)+'",'
            sql+='"'+str(row.status)+'",'
            sql+='"'+str(row.dimentions)+'",'
            sql+='"'+str(row.weight_g)+'",'
            sql+='"'+str(row.weight_oz)+'",'
            sql+='"'+str(row.SIM)+'",'
            sql+='"'+str(row.display_type)+'",'
            sql+='"'+str(row.display_resolution)+'",'
            sql+='"'+str(row.OS)+'",'
            sql+='"'+str(row.CPU)+'",'
            sql+='"'+str(row.GPU)+'",'
            sql+='"'+str(row.memory_card)+'",'
            sql+='"'+str(row.internal_memory)+'",'
            sql+='"'+str(row.RAM)+'",'
            sql+='"'+str(row.loud_speaker)+'",'
            sql+='"'+str(row.audio_jack)+'",'
            sql+='"'+str(row.WLAN)+'",'
            sql+='"'+str(row.bluetooth)+'",'
            sql+='"'+str(row.GPS)+'",'
            sql+='"'+str(row.NFC)+'",'
            sql+='"'+str(row.radio)+'",'
            sql+='"'+str(row.USB)+'",'
            sql+='"'+str(row.sensors)+'",'
            sql+='"'+str(row.colors)+'",'
            sql+='"'+str(row.approx_price_EUR)+'",'
            sql+='"'+str(row.img_url)+'")'
            cursor.execute(sql)
            conn.connection.commit()
            if(index==50):
                break