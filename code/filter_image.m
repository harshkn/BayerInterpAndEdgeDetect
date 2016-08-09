function [imgx, imgy] = filter_image(img, dx, dy)
%% filters an image with the filters dx and dy and returns both results

    imgx = [];
    imgy = [];
    
%   YOUR CODE GOES HERE
    imgx = imfilter(img,dx,'replicate','conv');
    imgy = imfilter(img,dy,'replicate','conv');
end