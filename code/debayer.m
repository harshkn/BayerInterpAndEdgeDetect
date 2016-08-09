function img2 = debayer(red, green, blue)
%% takes a bayer image and interpolates missing values to create a full
%  image.
%
%%
    img2 = [];
%   YOUR CODE GOES HERE 

    %% interpolating green pixel
    h = [0 0.25 0; 0.25 0 0.25; 0 0.25 0]; %bi-linear interpolation filter
    igreen = imfilter(green, h ) + green;
    
    %using adjacent pixel values(nearest neighbor) for green boundary
    %pixels
    gvertopline = [0 green(1,:)] + [green(1,:) 0]; %1-320 are considered
    gverbotline = [0 green(size(green,1),:)] + [green(size(green,1),:) 0];%2-321 are considered
    ghorfirstline = [0; green(:,1)] + [green(:,1); 0]; %1-480 are considered
    ghorlastline = [0; green(: ,size(green,2))] + [green(:,size(green,2)); 0];%2-481 are considered
    
    igreen(1,:) = gvertopline(:,1:320);
    igreen(size(green,1),:) = gverbotline(:,2:321);
    igreen(:,1) = ghorfirstline(1:480, 1);
    igreen(:,size(green,2)) = ghorlastline(2:481, :);
    
    
    %% interpolating red pixel -
    % at the position of known green pixel
    h = [0 0.5 0; 0 0 0 ; 0 0.5 0];
    iredatgreen1 = imfilter(red, h ) ;
    h = [0 0 0; 0.5 0 0.5 ; 0 0 0];
    iredatgreen2 = imfilter(red, h ) ;
    %interpolating red pixel - at the position of known blue pixel
    h = [0.25 0 0.25; 0 0 0; 0.25 0 0.25];
    iredatblue = imfilter(red, h ) ;
    ired = iredatgreen1 + iredatgreen2 + iredatblue + red;
    
    %using adjacent pixel values(nearest neighbor) for red boundary
    %pixels
    rvertopline = [0 red(1,:)] + [red(1,:) 0]; %1-320 are considered
    rhorlastline = [0; red(: ,size(red,2))] + [red(:,size(red,2)); 0];%1-480 are considered
    
    ired(1,:) = rvertopline(:,1:320);
    ired(size(red,1),:) = ired(size(red,1)-1,:); % using adjacent row as no known pixels are available
    ired(:,1) = ired(:,2); %using adjacent column as no known pixel is available in that column
    ired(:,size(red,2)) = rhorlastline(1:480, :);
    
    %% interpolating blue pixel 
    %- at the position of known green pixel
    h = [0 0 0; 0.5 0 0.5 ; 0 0 0];
    iblueatgreen1 = imfilter(blue, h);
    h = [0 0.5 0; 0 0 0 ; 0 0.5 0];
    iblueatgreen2 = imfilter(blue, h);
    %interpolating blue pixel - at the position of known red pixel
    h = [0.25 0 0.25; 0 0 0; 0.25 0 0.25];
    iblueatred = imfilter(blue, h) ;
    iblue = iblueatgreen1 + iblueatgreen2 + iblueatred + blue;
    
    %using adjacent pixel values(nearest neighbor) for blue boundary
    %pixels
    bverbotline = [0 blue(size(blue,1),:)] + [blue(size(blue,1),:) 0];%1-320 are considered
    bhorfirstline = [0; blue(:,1)] + [blue(:,1); 0]; %2-481 are considered
    
    iblue(1,:) = iblue(2,:);
    iblue(size(blue,1),:) = bverbotline(1,1:320 );
    iblue(:,1) = bhorfirstline(2:481,1);
    iblue(:,size(blue,2)) = iblue(:,size(red,2)-1);
    
    img2 = cat(3, ired, igreen, iblue);
    
end