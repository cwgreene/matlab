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