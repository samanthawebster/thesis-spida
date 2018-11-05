% Simulation options

% Name/value pairs for addLaserProfile.m varargin (called in addEMCCDNoise.m)
                                                   
% 'laserWidth' | value in [0,inf]
% 'laserShift' | real number
                                                   
laser_varargin = {'laserWidth', 100, 'laserShift', [0,0]};
                                                   
% varargin name options for EMCCD noise (see addEMCCDNoise.m for more details and defaults)
                                                   
% 'gain', 'avgPhotons', 'readNoise', 'adf', 'qYield', 'CIC', 'darkCurrent', 'exposureTime', 'autofluorPer'
                                                   
 noise_varargin = {'gain', 200, 'avgPhotons', 5e3, 'readNoise', 1, 'adf', 12, 'exposureTime', 0.05, 'qYield', 0.9, 'CIC', 0.005, 'darkCurrent', 0.008,  'autofluorPer', 0.05};
