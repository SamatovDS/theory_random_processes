function P = call_put_parity(S0, E, T, t, r, sigma)

    C = find_price_call(S0, E, T-t, r, sigma);
    
    P = C + E * exp(-r * (T-t)) - S0;

end