function data = load_bayer()
%% loads bayer data witout processing 
    data = load('../data/bayerdata.mat');
    data = data.bayerimg;
end