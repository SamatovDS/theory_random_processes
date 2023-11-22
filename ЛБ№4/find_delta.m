function delta = find_delta(S, E, t, tau, r, sigma)
    
    delta = [];
    i = 0;

    for time = 0:0.5:t
        d1 = (log(S(i+1)) - log(E) + (r + sigma(time)^2 / 2) * (t-time)) / (sigma(time) * sqrt(t-time));
        
        delta(i+1) = normcdf(d1);
        i = i + 1;
  
    end

end
