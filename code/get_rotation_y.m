function Ry = get_rotation_y(theta_y)
%% creates a 4x4 matrix for rotating a point angle degrees around the y-axis
%
    Ry = [];

%   YOUR CODE GOES HERE
    Ry = [cosd(theta_y) 0 sind(theta_y) 0; 0 1 0 0 ; -sind(theta_y) 0 cosd(theta_y) 0; 0 0 0 1];
    
end
    