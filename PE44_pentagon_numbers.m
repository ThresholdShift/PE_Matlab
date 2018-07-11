clear

tic
minval = 100000;
maxval = 200000;
minDiff = 450;
diff = 0;
min_m = 1;
min_n = 1;

for n = minval:maxval
    for m = floor(n*0.90):(n-1)
        P_m = pentagon(m);
        P_n = pentagon(n);
        diff = abs(P_m-P_n);
        
        if(diff<minDiff)
            if(isPent(diff)==1)
                if(isPent(P_m+P_n)==1)
                    min_m = m;
                    min_n = n;
                    minDiff = diff;
                end
            end
        end

    end
end

toc