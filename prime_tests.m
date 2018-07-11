clear

N = 10000;
bits = ceil(log(N)/log(2));

P = primes(N);
digits = zeros(1,bits);

for i = 1:length(P)
    d = dec2bin(P(i),bits);
    for j =1:bits
       if(d(j)=='1')
           digits(j) = digits(j) +1;
       end
    end    
end

stem(digits)