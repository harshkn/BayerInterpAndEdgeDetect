%% Problem 2 - Projective Transformation
%  please use this skeleton and implement the specified functions

% - Translation and Rotation are not commutative. 

t               = [-27.1; -2.9; -3.2];
principal_point = [8,-10];
focal_length    = 8;

T  = get_translation(t);
Ry = get_rotation_y(135);
Rx = get_rotation_x(-30);
Rz = get_rotation_z(90);

P = get_projection(principal_point, focal_length);

[C,M] = get_full(T,Rx,Ry,Rz,P);

projected_points = load_points('../data/obj_2d.mat');

display_points_2d(projected_points);

z = load_z('../data/zs.mat');

A1 = []; % SET THIS MATRIX
A1=C;
Xt = invert_projection(A1, projected_points, z);

A2 = [];% SET THIS MATRIX
A2 = M;
Xh = invert_rot_trans(A2, Xt);

world_points = hom2cart(Xh);

display_points_3d(world_points);

A3 = C*M; % SET THIS MATRIX
reprojected_points = project_points(A3, world_points);
display_points_2d(reprojected_points);
disp('Translation and Rotation are not commutative.');
