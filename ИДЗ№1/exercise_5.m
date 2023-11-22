clc, clearvars, close all, format compact

r = 0.2;
S0 = 200;
sigma = 0.3;
T = 4;
E = 210;
t = 0;
E_2 = 205;

price_call_option_ex_5 = find_price_call(S0, E, T-t, r, sigma);

P_5 = call_put_parity(S0, E_2, T, t, r, sigma);

%-------------------------------------------
sigma_1 = 0.4;

price_call_option_ex_5_1 = find_price_call(S0, E, T, r, sigma_1);

P_5_1 = call_put_parity(S0, E_2, T, t, r, sigma_1);

%-------------------------------------------
sigma_2 = 0.5;
E = E + 10;

price_call_option_ex_5_2 = find_price_call(S0, E, T, r, sigma_2);

E_2 = E_2 - 10;

P_5_2 = call_put_parity(S0, E_2, T, t, r, sigma_2);
