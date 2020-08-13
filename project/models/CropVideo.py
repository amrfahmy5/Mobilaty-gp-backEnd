from imageai.Detection import VideoObjectDetection
import os
import cv2
import flask


class CropVideo:
    def __init__(self):
        pass
    def initModel(self,videoPath):
        self.execution_path = os.getcwd()
        self.detector = VideoObjectDetection()
        self.detector.setModelTypeAsYOLOv3()
        self.detector.setModelPath(os.path.join(self.execution_path , "project/public/models/cropVideo/yolo.h5"))
        self.detector.loadModel()
        self.custom_objects = self.detector.CustomObjects(cell_phone=True)
        self.cap = cv2.VideoCapture()
        self.cap.open(os.path.join(self.execution_path, videoPath))
        self.videoImages=[]
        self.y=0
    def forFrame(self,frame_number, output_array, output_count):
        if(self.y!=len(output_array)):
            self.cap.set(1,frame_number); # Where frame_no is the frame you want
            ret,frame = self.cap.read() # Read the frame
            for obj in output_array:
                bbox = obj["box_points"]
                crop_img = frame[int(bbox[1]):int(bbox[3]),int(bbox[0]):int(bbox[2])]
                self.videoImages.append(crop_img)
            self.y=len(output_array)
    


    def upload_video(self,request):
        self.fullPath=os.path.join( os.getcwd(), 'project/public/videos')
        self.f = request.files['video']  
        self.f.save(os.path.join(self.fullPath, self.f.filename))
        return self.f.filename


    def run(self,videoName):
        videoPath="project/public/videos/"+videoName;
        self.initModel(videoPath);
        self.detector.detectCustomObjectsFromVideo(
                        custom_objects=self.custom_objects,
                        input_file_path=os.path.join(self.execution_path, videoPath),
                        save_detected_video=False,
                        frames_per_second=20,   
                        per_frame_function=self.forFrame,
                        thread_safe=True,
                        log_progress=True)
        return self.videoImages
