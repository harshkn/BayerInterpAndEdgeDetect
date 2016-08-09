function camera_points = invert_projection(A, projected_points, z)
%% inverts a projection

    camera_points = [];
    
%   YOUR CODE GOES HERE
    x = (projected_points(1,:)- z.*A(1,3))./A(1,1);
    y = (projected_points(2,:)- z.*A(2,3))./A(1,1);
    
    camera_points = cart2hom([x;y;z]);
end