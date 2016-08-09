function T = get_translation(t)
%% creates a 4x4 translation matrix from point t (3x1 vector)
%
    T = [];
    
%   YOUR CODE GOES HERE

    T = [eye(3) t;0 0 0 1];
    
end
    