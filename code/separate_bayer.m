function [red, green, blue] = separate_bayer(data)
%% takes bayer data, separates color channels and 
%  fills missing values with zero
%%
    red = [];
    green = [];
    blue = [];
    
%   YOUR CODE GOES HERE
    %get size
    [m ,n] = size(data);
    % create masks
    redmask = repmat([0 1; 0 0], m/2, n/2);
    greenmask = repmat([1 0; 0 1],m/2,n/2);
    bluemask = repmat([0 0; 1 0],m/2,n/2);
    
    %multiply masks and pixel values
    red = data .* redmask;
    green = data .* greenmask;
    blue = data .* bluemask;
    
    
end