function Rz = get_rotation_z(theta_z)
%% creates a 4x4 matrix for rotating a point angle degrees around the z-axis
%
    Rz = [];

%   YOUR CODE GOES HERE
    
    Rz = [cosd(theta_z) -sind(theta_z) 0 0; sind(theta_z) cosd(theta_z) 0 0 ; 0 0 1 0; 0 0 0 1];
end
    