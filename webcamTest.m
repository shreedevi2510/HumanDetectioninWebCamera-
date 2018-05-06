camList = webcamlist;
detector = vision.CascadeObjectDetector('humanTrain.xml');
cam = webcam(1);
img = snapshot(cam);
for idx = 1:100
    img = snapshot(cam);
    img = imresize(img, 0.5);
    bbox = step(detector,img);
    detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'human');
    imshow(detectedImg); title(num2str(numel(bbox)/4))
    pause(0.1);
end
clear cam
