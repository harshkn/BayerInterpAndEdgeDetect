function display_images(img1, img2)
%% displays two images in one figure.
%%
%   YOUR CODE GOES HERE
h = figure;    
subplot(1,2,1), imshow(img1);
title('Without Interpolation');
subplot(1,2,2), imshow(img2);
title('With bi-linear Interpolation');
saveas(h,'bayer-interp.eps','epsc')
end