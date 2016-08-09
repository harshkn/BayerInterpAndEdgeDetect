function edges2 = nonmaxsupp(edges, imgx, imgy)
%% non-maximum suppression

    edges2 = [];
    
%%  Non Maximum Supression : Code is still not complete, 
%  we planned to apply a filter that
%  replaces the center pixel with the maximum\n value in the normal 
%  direction

%   YOUR CODE GOES HERE
    
    grad_dir = atan2d(imgx,imgy);
    
    

    first_q = (0 <= grad_dir) & (grad_dir <= 90);
    first_mag = edges .* first_q;
    second_q = (91 <= grad_dir) & (grad_dir <=180);
    second_mag = edges .* second_q;
    third_q = (-180 <= grad_dir) & (grad_dir <= -90);
    third_mag = edges .* third_q;
    fourth_q = (-89 <= grad_dir) & (grad_dir <= -1);
    fourth_mag = edges .* fourth_q;

    
    
    edges2 = grad_dir .* edges;
    
    
end