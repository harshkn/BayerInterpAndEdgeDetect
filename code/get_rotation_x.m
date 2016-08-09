function Rx = get_rotation_x(theta_x)
%% creates a 4x4 matrix for rotating a point angle degrees around the x-axis
%
    Rx = [];
    

%   YOUR CODE GOES HERE
    
    Rx = [1 0 0 0; 0 cosd(theta_x) -sind(theta_x) 0; 0 sind(theta_x) cosd(theta_x) 0;0 0 0 1];
end
    