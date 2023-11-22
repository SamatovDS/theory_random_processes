function error = compare_result(data_1, data_2, data_3)
    t = 1:9;

    figure('Color', 'w')
    scatter(t, data_1)

    hold on
    scatter(t, data_2)
    scatter(t, data_3)
    hold off
    
    grid on
    grid minor
    
    title('Сравнение результатов')
    legend('Результат 4-го задания','Результат 5-го задания', 'Результат 6-го задания')
    xlabel('t')
    ylabel('y')
    
    for i = 1:9
        error(i) = abs(data_1(i) - data_2(i)) / data_1(i) * 100;
    end
end