% Generates a noiseless image, ima, and an image with noise, imawithNoise

clearvars % -except NoiseFirst
close all
totalsize = 500

QuantalBrightness = 10;
den = [10 0] ; % concentration per Beam area of [monomer - dimers]
agg = [1,2] * QuantalBrightness; % for [monomer - dimers] agg, aggregation???
radius = 1.5; % the number of pixel per PSF radius
extra = 2; % this is just to remove the convolution artifact

ima = create_and_convolve(totalsize,den,agg,radius,extra);

mean(ima(:))

% addEMCCDNoise instead of addPMTNoise
ima = addEMCCDNoise(ima, {'laserWidth', 20, 'laserShift', [0,0]}, []);

% WN = 0; % the offset value for white noise.
% [imaWithNoise,NoisyImage] = addPMTnoise(ima,WN); % the value of the slope of PMTNoise can be modified in the function NoisePMT(x,WN)  

% imshow([ima,imaWithNoise],[]);
ima1 = uint16(ima);
% imaWithNoise1=uint16(imaWithNoise);
savename = input('Please input file name for saving? ','s');

imwrite(ima1,[savename '.tif'],'TIFF')

% imwrite(imaWithNoise1 ,[savename '-with noise.tif'],'TIFF')
