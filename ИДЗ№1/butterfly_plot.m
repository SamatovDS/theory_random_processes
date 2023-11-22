function [St, profit] = butterfly_plot(x, y, z)

    St_1 = 0:x:2 * x;
    St_2 = 0:x + 10:2 * (x + 10);
    St_3 = 0:x + 5:2 * (x + 5);
    
    St = unique(sort([St_1 St_2 St_3]));
    
    figure('Color', 'w')
    fc_1 = max(St - x, 0);
    fc_2 = max(St - (x + 10), 0);
    fc_3 = max(St - (x + 5), 0);
    
    profit = fc_3 - 6 - fc_1 + y - fc_2 + (y - 2);
    
    hold on
    plot(St, profit)
    hold off 
    grid on
    grid minor
    
    title('Бабочка')
    xlabel('St')
    ylabel('П')

end