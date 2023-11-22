function create_vega_plot(t, X)
    figure('Color', 'w')
   
    hold on
    plot(t, X)
    hold off
    
    grid on
    grid minor
    
    title('Изменение Vega')
    xlabel('Время до завершения')
    ylabel('Vega')
end