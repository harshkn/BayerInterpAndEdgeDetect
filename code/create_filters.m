function [dx, dy] = create_filters()
%% creates 3x3 derivative filters in x and y direction
        
    dx = [];
    dy = [];
    
%   YOUR CODE GOES HERE
    % derivative filter 
    xder_filter = [0.5 0 -0.5];
    yder_filter = xder_filter';
    
    
    % smoothing filter with variance = 1 
    xgauss = fspecial('gaussian',[3 1],1);  %3x1 gaussian filter
    ygauss = fspecial('gaussian',[1 3],1);  %1x3 gaussian filter
    
    % filter is obtained by multiplying the desired filters
    dx = xgauss * xder_filter;
%     dx = [0.5 0 -0.5]' * ygauss ;
    dy = yder_filter * ygauss ;
end