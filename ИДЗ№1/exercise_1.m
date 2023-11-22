clc, clearvars, close all, format compact

r = 0.12;
sigma = 0.3;
t = 0;
T = 0.25;
x = 2500;		
y = 8000000;
z = 3000;
E = 3300;
r_c = 18;

futures_money = futures_profit(z, x);

credit = y * (1 + r_c / (12 * 100))^3;

tau = T - t;
price_put_option_ex_1 = find_price_put(z, E, tau, r, sigma);
price_call_option_ex_1 = find_price_call(z, E, tau, r, sigma);

put_money = price_put_option_ex_1 * x;