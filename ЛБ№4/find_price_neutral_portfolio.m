function X = find_price_neutral_portfolio(S, E, t, tau, r, sigma, delta)
    X = [];
    i = 0;

    for time = 0:0.5:t
        d1 = (log(S(i+1)) - log(E) + (r + sigma(time)^2 / 2) * (t-time)) / (sigma(time) * sqrt(t-time));
        d2 = d1 - sigma(time) * sqrt(t-time);
        
        C = S(i+1) * normcdf(d1) - E * exp(-r * (t-time)) * normcdf(d2);
        
        X(i+1) = C - S(i+1) * delta(i+1);
        i = i + 1;
    end

end 