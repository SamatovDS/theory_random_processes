function vega = find_vega(S, E, t, tau_list, r, sigma)

    vega = [];

    for i = 0:length(tau_list)-1

        d1 = (log(S(i+1)) - log(E) + (r + sigma^2 / 2) * tau_list(i+1)) / (sigma * sqrt(tau_list(i+1)));

        vega(i+1) = normpdf(d1) * S(i+1) * sqrt(tau_list(i+1));
  
    end

end