function world_points = invert_rot_trans(A, camera_points)
%% inverts rotation and translation of camera_points

    world_points = [];
    
     world_points= A\camera_points;
    
%   YOUR CODE GOES HERE
    
end