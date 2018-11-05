%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Example Code for generating images %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clearvars % -except NoiseFirst
close all
totalsize = 500

% From fitphaseSpace.m - gets all parameters from inputPhaseSpaceVars.m
run('inputPhaseSpaceVars.m')
%laser_varargin = {};

QuantalBrightness = 10;
den = [10 0] ; % concentration per Beam area of [monomer - dimers]
agg = [1,2] * QuantalBrightness; % for [monomer - dimers] agg, aggregation???
radius = 1.5; % the number of pixel per PSF radius
extra = 2; % this is just to remove the convolution artifact

% Noiseless image
ima = create_and_convolve(totalsize,den,agg,radius,extra);

mean(ima(:))


WN = 0; % the offset value for white noise.

%% PMT Noise
% [imaWithNoise,NoisyImage] = addPMTnoise(ima,WN); % the value of the slope of PMTNoise can be modified in the function NoisePMT(x,WN)

%% EMCCD Noise
% Instead of adding PMT noise, we use addEMCCDnoise.m to add noise to ima (the noiseless simulated image)
imaWithNoise = addEMCCDnoise(ima, laser_varargin, varargin);

%imshow([ima,imaWithNoise],[]);

% Convert image type or something
ima1=uint16(ima);
imaWithNoise1=uint16(imaWithNoise);

savename = input('Please input file name for saving? ','s');

imwrite(ima1,[savename '.tif'],'TIFF')

imwrite(imaWithNoise1 ,[savename '-with noise.tif'],'TIFF')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
