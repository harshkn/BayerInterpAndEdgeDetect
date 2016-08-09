function z = load_z(filename)
%% loads z coordinates from file

    z = [];
    
%   YOUR CODE GOES HERE
   z = load(filename);
   z = z.Z;
end