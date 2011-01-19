function [choice,nx,ns,nc,nf] = lol(which,x,s,c,f)
    nx=x;ns=s;nc=c;nf=f;
    delta_f = 0.0223;
    delta_s = 0.017;
    delta_c = 0.0093;
    ds = x*(1-c+c*(2+f))*delta_s;
    dc = s*x*(1+f)*delta_c;
    df = s*x*c*delta_f;
    dmax = max([ds;dc;df]);
    if dmax == ds
        choice = [which 'speed'];
        ns = ns + delta_s;
    elseif dmax == dc
        choice = [which 'crit chance'];
        nc = nc + delta_c;
    elseif dmax == df
        choice = [which 'crit dam'];
        nf = nf + delta_f;
    end