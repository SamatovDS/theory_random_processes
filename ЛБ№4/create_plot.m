function create_plot(t, X)
    figure('Color', 'w')
   
    hold on
    plot(t, X)
    hold off
    
    grid on
    grid minor
    
    title('Cтоимость риск – нейтрального портфеля')
    xlabel('t')
    ylabel('X')
end