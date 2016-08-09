function cartesian_points = hom2cart(homogeneous_points)
%% converts points from homogeneous coordinates to cartesian 3d 

    cartesian_points = [];
    
%   YOUR CODE GOES HERE
   % [r,c] = size(homogeneous_points);
    cartesian_points = homogeneous_points(1:end-1,:);

end