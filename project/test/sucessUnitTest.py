import requests
import os
import json
addr = 'http://localhost:8000'
s = requests.Session()
headers = {
    'Content-Type': 'application/json',
    'Accept': '*/*',
    'Authorization': 'Bearer <redacted>',
    'my-custom-header':'my-custom-status-0'
}
def login():
    test_url = addr + '/login'
    PARAMS = {
        'username':"user1",
        "password":"123"
        }
    response = s.get(test_url,params = PARAMS)
    assert response.text != ''
    assert response.status_code == 200   
def user_signup():
    test_url = addr + '/signup'
    data = {
    	"name": "user1",
    	"email": "user1@gmail.com",
    	"password": "123",
    	"age": "123",
    	"type": "0",
    	"address": "examp"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(data))
    assert response.text != ''
    assert response.status_code == 200 
def store_signup():
    test_url = addr + '/signup'
    PARAMS = {
    	"name": "user1",
    	"email": "user1@gmail.com",
    	"password": "123",
    	"age": "123",
    	"type": "1",
    	"address": "examp",
    	"store_name":"store5",
    	"store_descreption":"ay7aga",
    	"store_address":"fakee"
    }

    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text != ''
    assert response.status_code == 200  


login()
user_signup()
store_signup()



def Allposts():
    test_url = addr + '/post/Allpost'
    response = s.get(test_url)
    assert response.text != ''
    assert response.status_code == 200
def DeletePost():
    test_url = addr + '/post/delete'
    PARAMS = {'post_id':"1"} 
    response = s.get(test_url,params = PARAMS)
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200
def postUpdate():
    test_url = addr + '/post/update'
    PARAMS = {
    	"post_id":"1" ,
    	"post_description":"hiiiiiiiaaaa",
    	"post_img": "/postImage/post5.png"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200



  
Allposts() 
DeletePost()
postUpdate()

    
def storeReadWithPosts():
    test_url = addr + '/store'
    PARAMS = {
    	"store_id":"15"
    }
    response = s.get(test_url,params = PARAMS)
    assert response.text != ''
    assert response.status_code == 200
def allStore():
    test_url = addr + '/showAllStores'
    response = s.get(test_url)
    assert response.text != ''
    assert response.status_code == 200
def storeDelete():
    test_url = addr + '/store/delete'
    PARAMS = {
    	"store_id":"11"
    }
    response = s.get(test_url,params = PARAMS)
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200

storeReadWithPosts()
allStore()
storeDelete()



def commentCreate():
    test_url = addr + '/comment/create'
    PARAMS = {
    	"post_id":"2" ,
    	"comment_body":"hiiiiiii",
    	"user_id": "57"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200
def commentRead():
    test_url = addr + '/comment'
    PARAMS = {
    	"post_id":"7"
    }
    response = s.get(test_url,params = PARAMS)
    assert response.text != ''
    assert response.status_code == 200
def commentUpdate():
    test_url = addr + '/comment/update'
    PARAMS = {
    	"comment_id":"8" ,
    	"comment_body":"amrrr"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200 
def commentDelete():
    test_url = addr + '/comment/delete'
    PARAMS = {
    	"comment_id":"7"
    }
    response = s.get(test_url,params = PARAMS)
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200
    
commentCreate()   
commentRead() 
commentUpdate() 
commentDelete() 
    
def findByMobileId():
    test_url = addr + '/mobile/findByMobileId'
    PARAMS = {
    	"mobile_id":"7"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text != ''
    assert response.status_code == 200

findByMobileId()


def mobileName():
    test_url = addr + '/mobileName'
    PARAMS = {
    	"mobile_name":"Iconia Talk S"
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text != ''
    assert response.status_code == 200
mobileName() 


def Allmobile():
    test_url = addr + '/Allmobile'
    response = s.get(test_url)
    assert response.text != ''
    assert response.status_code == 200
Allmobile()  


def updateRate():
    test_url = addr + '/updateRate'
    PARAMS = {
    	"store_id":"29",
        "rate":"3"
    }
    response = s.get(test_url,params = PARAMS)
    
    assert response.text.replace("\n", "") == '200'
    assert response.status_code == 200
updateRate()


def predictPrice():
    test_url = addr + '/predictPrice'
    PARAMS = {
    	"battery_power": 842,
    	"blue":0 ,
    	"clock_speed":2.2 ,
    	"dual_sim": 0,
    	"fc": 1,
    	"four_g":0 ,
    	"int_memory": 7,
    	"m_dep" : 0.6 ,
    	"mobile_wt":188 ,
    	"n_cores":2 ,
    	"pc":2 ,
    	"px_height":20 ,
    	"px_width":756 ,
    	"ram":2549,
    	"sc_h":9 ,
    	"sc_w": 7,
    	"talk_time":19 ,
    	"three_g":0 ,
    	"touch_screen":0 ,
    	"wifi":1
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text != ''
    assert response.status_code == 200
predictPrice()


def recommendMobile():
    test_url = addr + '/recommendMobile'
    PARAMS = {
    	"battary": "['Removable', 'Li-Ion', '1300', 'mAh', 'battery']",
    	"display_size" : "['3.6', 'inches,', '36.9', 'cm2']",
    	"storage_and_ram": "['512MB', '512MB', 'RAM']",
    	"price":150
    }
    response = s.post(test_url, headers=headers,data = json.dumps(PARAMS))
    assert response.text !=''
    assert response.status_code == 200
recommendMobile() 


def recommendStore():
    test_url = addr + '/recommendStore'
    PARAMS = {
    	"x_axis":"7",
        "y_axis":"7",
        "rate":"5"
    }
    response = s.get(test_url,params = PARAMS)
    assert response.text != ''
    assert response.status_code == 200
recommendStore()
    
"""
def videoDetection():
    test_url = addr + '/croped_video'
    path = os.path.join( os.getcwd(), 'project/public/videos')+"/20200807_203246.mp4"
    files = {'video': open(path)}
    response = s.post(test_url, headers=headers,files = files)
    assert response._content == 'done'
    assert response.status_code == 200
    

def updateStore():
    test_url = addr + '/store/update'
    path = os.getcwd()+"/amr.png"
    files = {'post_img': open(path)}
    files = {'store_img': open(path)}
    PARAMS = {
    	"store_name":"amrrr" ,
    	"store_descreption":"hiiiiiii",
        "address":"hiiiiiii",
        "store_id":"7"
    }
    response = s.post(test_url, headers=headers,files = files,data=PARAMS)
    assert response._content == 'done'
    assert response.status_code == 200
  
def createPost():
    test_url = addr + '/post/create'
    path = os.getcwd()+"/amr.png"
    files = {'post_img': open(path,'rb').read()}
    PARAMS = {
    	"store_id":"7" ,
    	"post_description":"hiiiiiii"
    }
    response = s.post(test_url, headers=headers,files = files,data=PARAMS)
    assert response._content == 'done'
    assert response.status_code == 200
"""
