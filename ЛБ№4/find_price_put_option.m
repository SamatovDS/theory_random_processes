function price_put_option = find_price_put(S, E, tau, r, sigma)
    
    d1 = (log(S) - log(E) + (r + sigma^2 / 2) * tau) / (sigma * sqrt(tau));
    d2 = d1 - sigma * sqrt(tau);
    
    price_put_option = -S * normcdf(-d1) + E * exp(-r * tau) * normcdf(-d2); 

end