% Simulation options

% Name/value pairs for addLaserProfile.m varargin (called in addEMCCDNoise.m)

% 'laserWidth' | value in [0,inf]
% 'laserShift' | real number

laser_varargin = {'boundCond', 'hard', 'kerType', 'integrate'};

% varargin name options for EMCCD noise (see addEMCCDNoise.m for more
% details and defaults)

% 'gain', 'avgPhotons', 'readNoise', 'adf', 'qYield', 'CIC', 'darkCurrent', 'intTime', 'autofluorPer'

noise_varargin = {'gain', 200, 'avgPhotons', 5e3, 'intTime', 0.1, 'autofluorPer', 0.05};

