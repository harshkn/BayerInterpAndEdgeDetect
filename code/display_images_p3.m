function display_images_p3(or, img1, img2)
%% displays two images in one figure.
%%
%   YOUR CODE GOES HERE
h = figure(1)
subplot(1,3,1), imshow(or);
subplot(1,3,2), imshow(img1);
title('dx - In x direction');
subplot(1,3,3), imshow(img2);
title('dy - In y direction');
saveas(h,'edge-orig-deiv.eps','epsc')

end