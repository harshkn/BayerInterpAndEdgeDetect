function img = make_image(red, green, blue)
%% makes a single image from 3 color channels
%
%%
    assert(isfloat(red) & isfloat(green) & isfloat(blue), ...
        'The color channels should be floating values between 0 and 1.');

    img = [];
    
%   YOUR CODE GOES HERE

    img = cat(3, red, green, blue);

end