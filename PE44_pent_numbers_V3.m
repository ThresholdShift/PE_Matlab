clear
tic
maxint = 50000;
max_q = maxint-1; 
startint = 2;
diff = pentagon(maxint);

allN = [1:maxint*2];
Plist = 1.5.*allN.^2 -0.5.*allN;

for m = startint:maxint
   for q = (startint-1):max_q
       P_m = Plist(m);
       P_n = P_m + Plist(q);
       if((find(Plist==P_n)>0))
           P_p = P_m + P_n;
           if((find(Plist==P_p)>0))
               diff = Plist(q)
               message = ['P_m= ' num2str(P_m), ', P_n= ', num2str(P_n), ', q= ', num2str(q)];
               disp(message)
               toc
           end
       end
   end    
end