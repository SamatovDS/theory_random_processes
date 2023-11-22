function profit = call_plot(x, y, z)

    St = 0:x:2 * x;
    fc = max(St - x, 0);
    profit = max(St-x, 0) - y;
    
    figure('Color', 'w')
    hold on
    plot(St, fc)
    hold off 
    grid on
    grid minor
    
    title('Функция выплаты для call option')
    xlabel('St')
    ylabel('ft')
    
    figure('Color', 'w')
    hold on
    plot(St, profit)
    hold off 
    grid on
    grid minor
    
    title('Функция прибыли для call option')
    xlabel('St')
    ylabel('П')    

end