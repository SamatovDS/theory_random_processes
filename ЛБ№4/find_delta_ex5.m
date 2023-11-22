function delta = find_delta_ex5(S, E, t, tau_list, r, sigma)
    
    delta = [];

    for i = 0:length(tau_list)-1
            d1 = (log(S(i+1)) - log(E) + (r + sigma^2 / 2) * tau_list(i+1)) / (sigma * sqrt(tau_list(i+1)));
    
            delta(i+1) = normcdf(d1);

    end

end
