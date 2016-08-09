function edges = detect_edges(imgx, imgy, threshold)
%% computes the gradient magnitude from imgx and imgy (the derivatives of 
%  the  image in x and y direction and thresholds it.

    edges = [];
    
%   YOUR CODE GOES HERE
    %computing gradient magnitude
    grad_mag = sqrt((imgx .* imgx) + (imgy .* imgy));
    index = (grad_mag > threshold);
    edges = grad_mag .* index;
end