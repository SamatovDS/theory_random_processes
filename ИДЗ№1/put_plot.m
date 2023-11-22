function profit = put_plot(x, y, z)
    
    St = 0:x:2 * x;
    fp = max(x - St, 0);
    profit = max(x - St, 0) - z;


    figure('Color', 'w')
    hold on
    plot(St, fp)
    hold off 
    grid on
    grid minor
    
    title('Функция выплаты для put option')
    xlabel('St')
    ylabel('ft')
    
    figure('Color', 'w')
    hold on
    plot(St, profit)
    hold off 
    grid on
    grid minor
    
    title('Функция прибыли для put option')
    xlabel('St')
    ylabel('П')    
    
end