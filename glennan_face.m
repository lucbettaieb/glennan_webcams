clear all;
FDetect = vision.CascadeObjectDetector;

while(true)
    img = imread('http://viewfinder4.case.edu/out.jpg');
    %img = imread('/Users/luc/Pictures/IMG_2055.jpg');
    bbox = step(FDetect,img);

    imshow(img); hold on
    
    for i = 1:size(bbox,1)
        rectangle('Position',bbox(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
    end
    hold off;

    pause(0.001);
end