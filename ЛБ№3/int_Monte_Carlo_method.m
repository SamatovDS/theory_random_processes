function ans = int_Monte_Carlo_method(f, j, t, N)

    under = 0; 
    n = N * j / 8;
   
    for i = 1:n
        under = under + f(rand(1) * t);
    end
    
    ans = sqrt(t) * normrnd(0, 1, 1) * under / n;
    
end