%% Problem 3 - Edge Detection
%  please use this skeleton and implement the specified functions

img = load_image('../data/a1p3.png');

[dx, dy] = create_filters();

[imgx, imgy] = filter_image(img, dx, dy);

%modified display images from p1 so we can add custom title to imshows
display_images_p3(img,imgx, imgy);

threshold = 0.04; % YOU SHOULD PICK A BETTER ONE
%We found this threshold by varying it from 0.001 to 0.08 and checking
%result for each variation. We finally set at 0.04 because it was close to the
%real egdes of the building and not coarse variations which are not edges.

edges = detect_edges(imgx, imgy, threshold);

edges2 = nonmaxsupp(edges, imgx, imgy);


h = figure(2)
subplot(1,2,1), imshow(edges);
title('Edges before non-maximum suppression');
subplot(1,2,2), imshow(edges2);
title('Edges after non-maximum suppression');
saveas(h,'edge-result.eps','epsc')

fprintf(['\nWe found this threshold by varying it from 0.001 to 0.08 \n'...
    'and checking result for each variation.\n'...
    'We finally set at 0.04 '... 
    'because it was close to the \nreal egdes of the building '...
    'and not coarse variations which are not edges. \n \n']);


