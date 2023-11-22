clc, clearvars, close all, format compact

S0 = 100;
E = 110;
T = 1;
r = 0.1;
sigma = 0.3;
t = 0;

% Хеджирующее соотношение Δ для опциона покупателя.
d1 = @(S, E, r, sigma, tau) (log(S) - log(E) + (r + sigma^2 / 2) * tau) / (sigma * sqrt(tau));
delta = normcdf(d1(S0, E, r, sigma, T-t));

% Текущую цену (в момент t) опциона покупателя. 
price_call_option_ex_4 = find_price_call(S0, E, T-t, r, sigma);

% Цену опциона покупателя спустя полгода с момента его выпуска.
price_call_option_ex_4_1 = find_price_call(S0, E, T-0.5, r, sigma);

% Как увеличение срока исполнения в два раза влияет на текущую цену опциона покупателя?
T = 2;
price_call_option_ex_4_2 = find_price_call(S0, E, T-t, r, sigma);

% Используя соотношение call-put, найдите текущую цену опциона продавца европейского типа со сроком исполнения один год (T=1) и ценой исполнения 90 руб.  
T = 1;
t = 0;
E = 90;
r = 0.1;
sigma = 0.3;
S0 = 100;

P_4 = call_put_parity(S0, E, T, t, r, sigma);