%% Problem 1 - Bayer Interpolation
%  please use this skeleton and implement the specified functions

% load image
data = load_bayer();
data = data ./ 255; % converting to float between 0 and 1
% separate color channels
[red, green, blue] = separate_bayer(data);

% interpolate bayer
img2 = debayer(red, green, blue);


% concatenate color channels to image
img1 = make_image(red, green, blue);
    

% display image
display_images(img1, img2);

