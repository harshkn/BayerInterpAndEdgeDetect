function projected_points = project_points(A, points)
%% projects points from 3D to 2D using marix A

    projected_points = [];
    projected_points = A*cart2hom(points);
%   YOUR CODE GOES HERE
   
end