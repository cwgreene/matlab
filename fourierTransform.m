%This function demonstrates a brute force method
%of performing the fourier transform manually.
%It's not fast, but it is simple. It's based on the
%direct definition of the fourier transform as integral
%for each frequency.
function [transform] = fourierTransform(xvalues,inArray)
    omegavalues = xvalues;
    x=xvalues;
    index=1;
    transform = 1:length(xvalues);
    for omega= omegavalues
        transform(index)=(1/sqrt(2*pi))*trapz(x,inArray.*exp(x*1i*omega));
        index = index +1;
    end
end
