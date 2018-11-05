
function [matrix_final,particleimage_out,NUM,matrix_conv] = create_and_convolve(totalsize,den,agg,radius,extra)
    area = (pi*radius^2);    
    matrix = zeros(totalsize+2*extra*radius);        
    for it = 1:length(den) % ????
        matrixtemp    = zeros(size(matrix,1),size(matrix,2));
        num           = round(den(it)*((totalsize+2*extra*radius)^2)/(pi*radius^2));
        particleimage = createImage(totalsize+2*extra*radius,num);       
        NUM(it)       = sum(sum(particleimage((extra*radius+1):(extra*radius+totalsize),(extra*radius+1):(extra*radius+totalsize))));
        matrixtemp    = area*agg(it)*particleimage;
        matrix        = matrix + matrixtemp;
    end
    matrix_conv  = round(convolveGaussian(matrix,radius*6,radius));
    matrix_final = matrix_conv((extra*radius+1):(extra*radius+totalsize),(extra*radius+1):(extra*radius+totalsize));
    
    particleimage_out = particleimage((extra*radius+1):(extra*radius+totalsize),(extra*radius+1):(extra*radius+totalsize));
