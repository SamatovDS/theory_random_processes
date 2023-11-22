function [St, profit] = spred(x, y, z) 
    
    St_1 = 0:x:2 * x;
    St_2 = 0:55:110;
    
    St = unique(sort([St_1 St_2]));
    
    figure('Color', 'w')
    fc_1 = max(St - x, 0);
    fc_2 = max(St - 55, 0);
    profit = fc_1 - y - fc_2 + 5;
    
    hold on
    plot(St, profit)
    hold off 
    grid on
    grid minor
    
    title('Бычий спред')
    xlabel('St')
    ylabel('П')

end