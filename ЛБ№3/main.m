clc, clearvars, close all, format compact
randn('state', 40);


h = 4*10^(-3);
n = 10^3;
t = 0:h:4;
p = 0.5; q = 0.5;
N = 10^4;
S0 = 15;
a = 0; b = 4;
eps = 0.01;
delta = 0.05;
f_1 = @(x) 0.08 .* x - (2.^x + 1).^2 / (100^2 * 2);
f_2 = @(x) (2 .^ x + 1) / 100;
f_3 = @(x) 0.08 .* x;
f_4 = @(x, S, h) 0.08 .* x .* S .* h + (2 .^ x + 1) / 100 .* S * (sqrt(h)*normrnd(0, 1, 1));


r = normrnd(0, sqrt(t), 1, n+1);
% create_plot(t,r);
% model_winner_process(N);
S = integrate_ex(f_1, f_2, a, b, eps, delta);
B = integrate_ex_5(f_3, a, b);

res = dif_Runge_Kutta_method(f_4, a, b);

test_res = zeros(1, 9);
test_res(1) = res(1); 
for i = 1:8
    test_res(i+1) = res(i*12500);
end

error = compare_result(S, B, test_res);
