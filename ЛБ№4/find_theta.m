function theta = find_theta(S, E, t, tau, r, sigma)
    
    theta = [];
    i = 0;

    for time = 0:0.5:t
        if (t-time) ~= 0
            d1 = (log(S(i+1)) - log(E) + (r + sigma(time)^2 / 2) * (t-time)) / (sigma(time) * sqrt(t-time));
            d2 = d1 - sigma(time) * sqrt(t-time);
        
            theta(i+1) = -(sigma(time) * S(i+1)) / (2 * sqrt(t-time)) * normpdf(d1) + r * E * exp(-r * (t-time)) * normcdf(-d2);
            i = i + 1;
        else
            theta(i+1) = 0;
            i = i + 1;
        end
    end 

end 