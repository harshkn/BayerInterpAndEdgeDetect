function homogeneous_points = cart2hom(cartesian_points)
%% converts points from cartesian 3d coordinates to homogeneous coordinates

    homogeneous_points = [];
    
%   YOUR CODE GOES HERE
    homogeneous_points = [cartesian_points ; ones(1,size(cartesian_points,2))];

    
end