% У меня опцион пут

clc, clearvars, close all, format compact

S = [15, 15.54, 16.16, 17.21, 17.18, 19.78, 21.38, 24.29, 26.89];

h = 0.004;
t = 0:h:4; 
t = t(250:end);
tau = 3;

sigma = @(t) (2.^t + 1) / 100;
E_put = 7 * S(1) / 8;
E_call = 8 * S(1) / 7; 
r = 0.1; 

% Первое задание
price_put_option = find_price_put_option(S(3), E_put, 1, tau, r, sigma);

% Второе задание
delta = find_delta(S, E_call, 4, tau, r, sigma);
theta = find_theta(S, E_put, 4, tau, r, sigma);

% Третье задание
X_t = find_price_neutral_portfolio(S, E_call, 4, tau, r, sigma, delta);

create_plot(1:9, X_t)

% Четвертое задание
T = 1;
data = [50.00, 49.67, 49.63, 49.74, 50.22, 48.36, 48.74, 50.08, 49.63, 48.39, 48.19, 48.95, 48.57, 48.34, 49.02,...
    48.85, 49.45, 49.46, 48.48, 47.87, 46.51, 48.55, 47.96, 48.26, 47.74, 48.80, 48.31, 49.16, 48.18, 47.65,...
    46.19, 46.17, 46.05, 46.28, 44.47, 44.02, 43.00, 42.59, 43.23, 43.52, 45.20, 46.11,...
    46.24, 46.50, 45.64, 46.90, 46.43, 46.67, 46.91, 47.64, 48.21];

h = [];

for i = 2:length(data)
    h(i-1) = (data(i) - data(i-1)) / data(i-1);
end

sigma_week = var(h, 1);
sigma_year = sqrt(52) * sqrt(sigma_week);

% Пятое задание
E_call_50 = 50;
r_ex5 = 0.1;

j = 1:49;
tau_list = (50 - j) / 50;

delta_list = find_delta_ex5(data, E_call_50, 4, tau_list, r_ex5, sigma_year);
create_delta_plot(1:49, delta_list)

gamma_list = find_gamma(data, E_call_50, 4, tau_list, r_ex5, sigma_year);
create_gamma_plot(1:49, gamma_list)

vega_list = find_vega(data, E_call_50, 4, tau_list, r_ex5, sigma_year);
create_vega_plot(1:49, vega_list)