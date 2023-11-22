function gamma = find_gamma(S, E, t, tau_list, r, sigma)
    
    gamma = [];

    for i = 0:length(tau_list)-1

        d1 = (log(S(i+1)) - log(E) + (r + sigma^2 / 2) * tau_list(i+1)) / (sigma * sqrt(tau_list(i+1)));

        gamma(i+1) = normpdf(d1) / (S(i+1) * sigma * sqrt(tau_list(i+1)));
  
    end

end