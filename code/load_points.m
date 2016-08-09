function points = load_points(filename)
%% loads a set of points from a file

    points = [];
    
    
%   YOUR CODE GOES HERE
    points = load(filename);
    points = points.x;

    
end