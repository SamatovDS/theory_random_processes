function profit = stredle_plot(x, y, z)
    
    St = 0:x:2 * x;
    profit_call = max(St - x, 0) - y;
    profit_put = max(x - St, 0) - z; 
    profit = profit_call + profit_put;
    
    figure('Color', 'w')
    hold on
    plot(St, profit)
    hold off 
    grid on
    grid minor
    
    title('Функция прибыли "Стреддл"')
    xlabel('St')
    ylabel('П')


end