% Generate two Pentagonal numbers with index n and m, P_n, and P_m.
% n > m, and therefore P_n > P_m
% 
% P_p = P_n + P_m
% P_q = P_n - P_m  (note: n>m, so P_q is positive)%
%
% Add these two equations to show that:
% P_p + P_q = 2P_n
%
% Subtract them to show that:
% P_p - P_q = 2P_m
%
% P_q < P_m < P_n < P_p
%
%
% --Algorithm--
% Iterate through m. Find a q, less than m.
% P_m + P_q = P_n. If that's pentagonal, continue.
% If P_m+P_n is pentagonal, then the answer is P_q.
clear
tic
maxint = 50000;
max_q = 55500; % based on previous runs
startint = 2;
diff = pentagon(maxint);

for m = startint:maxint
   for q = (startint-1):max_q
       P_m = pentagon(m);
       P_n = P_m + pentagon(q);
       if(isPent(P_n)==1)
           P_p = P_m + P_n;
           if(isPent(P_p)==1)
               diff = pentagon(q)
               message = ['P_m= ' num2str(P_m), ', P_n= ', num2str(P_n), ', q= ', num2str(q)];
               disp(message)
               toc
           end
       end
   end    
end

toc