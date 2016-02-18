while(true)
    img = imread('http://viewfinder4.case.edu/out.jpg');
    %img = imread('/Users/luc/Pictures/IMG_2055.jpg');
    
    points = detectSURFFeatures(rgb2gray(img));
    imshow(img);  hold on;
    
    plot(points.selectStrongest(10));
    pause(0.001);
end