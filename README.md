# thesis-spida
The purpose of this project is to develop pre-existing code for SpIDA analysis of images taken using TIRF microscopy for a Physics Bachelor's Thesis at McGill University.

The original code for addEMCCDNoise, addLaserProfile, and getCtrlPxl was written by Simon Sehayek. The original SpIDA code was written by Antoine Godin and collaborators.

The first modification was calling addEMCCDNoise rather than addPMTNoise in RunImageSim. This creates and saves a .tif image representing the noise of an EMCCD detector. The noise is simulated using the model described in [1].

References

[1]  Hirsch et al. (2013) A stochastic model for electron multiplication charge coupled devices - from theory to practice, PloS One 8(1):e53671
