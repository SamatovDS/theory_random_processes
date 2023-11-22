function create_plot(t, r)
    figure('Color', 'w')
   
    hold on
    plot(t, r)
    hold off
    
    grid on
    grid minor
    
    title('График винеровского процесса')
    xlabel('t')
    ylabel('W')
end