clc, clearvars, close all, format compact

S0 = 40;
E = 35;
T = 1/2;
t = 0;
sigma = 0.3;
r = 0.12;

tau = T - t;

price_put_option_ex_2 = find_price_put(S0, E, tau, r, sigma);

price_call_option_ex_2 = find_price_call(S0, E, tau, r, sigma);
