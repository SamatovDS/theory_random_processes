clc, clearvars, close all, format compact

x = 40;
y = 10;
z = 6;
St = 0:x:2 * x;

%Первый пункт 
profit_call = call_plot(x, y, z);

% %Второй пункт
profit_put = put_plot(x, y, z);

%Третий пункт
profit_stredle = stredle_plot(x, y, z);

% %Сравниваем графики 
% %На каждом интервал смотрим график, и говорим, какая из стратений лучше 
figure('Color', 'w')

plot(St, profit_call)
hold on
plot(St, profit_put)
plot(St, profit_stredle)
hold off 
grid on
grid minor

title('Сравнение стратегий')
legend('Call', 'Put', 'Стреддл')
xlabel('St')
ylabel('П')

% Четвертый пункт
[St_spred, profit_spred] = spred(x, y, z);

figure('Color', 'w')

plot(St, profit_call)
hold on
plot(St, profit_put)
plot(St, profit_stredle)
plot(St_spred, profit_spred)
hold off 
grid on
grid minor

title('Сравнение стратегий')
legend('Call', 'Put', 'Стреддл', 'Бычий спред')
xlabel('St')
ylabel('П')

% Пятый пункт
[St_butterfly, profit_butterfly] = butterfly_plot(x, y, z);


figure('Color', 'w')

plot(St, profit_call)
hold on
plot(St, profit_put)
plot(St, profit_stredle)
plot(St_spred, profit_spred)
plot(St_butterfly, profit_butterfly)
hold off 
grid on
grid minor

title('Сравнение стратегий')
legend('Call', 'Put', 'Стреддл', 'Бычий спред', 'Бабочка')
xlabel('St')
ylabel('П')

end