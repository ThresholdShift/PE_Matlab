function y = isPent(P_n)
    a = (1/6)*(1+sqrt(1+24.*P_n));
    y = (mod(a,1)==0);
end