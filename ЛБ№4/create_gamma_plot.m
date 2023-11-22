function create_gamma_plot(t, X)
    figure('Color', 'w')
   
    hold on
    plot(t, X)
    hold off
    
    grid on
    grid minor
    
    title('Изменение Gamma')
    xlabel('Время до завершения')
    ylabel('Gamma')

end