function P = get_projection(principal_point, focal_length)
%% creates intrinsic (aka projection) matrix from principal point and focal length

    P = [];
    
%    YOUR CODE GOES HERE

    P = [focal_length 0 principal_point(1) ;0 focal_length principal_point(2) ; 0 0 1 ];

end