function create_delta_plot(t, X)
    figure('Color', 'w')
   
    hold on
    plot(t, X)
    hold off
    
    grid on
    grid minor
    
    title('Изменение Delta')
    xlabel('Время до завершения')
    ylabel('Delta')

end