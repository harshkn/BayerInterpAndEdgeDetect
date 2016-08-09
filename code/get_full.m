function [P, M] = get_full(T, Rx, Ry, Rz, V)
%% creates a full camera matrix P and a model matrix M

    P = [];
    M = [];
    
%    YOUR CODE GOES HERE
    P = [V,[0;0;0]];
    %M =   T * Ry * Rx * Rz;
    M =   Ry * Rx * Rz * T; %model matrix
end