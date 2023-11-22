function model_winner_process(n)
    x = randi([0 1], 1, n) * 2 - 1;
    W = zeros(1, n);
    
    figure('Color', 'w');

    for i = 1:n
        W(i) = sum(x(1, 1:i)) / sqrt(n);
        
%         plot(W)
%         pause(10^-5) 

    end
    
    plot(W)
       
    grid on
    grid minor
    
    title('График моделирования винеровского процесса')
    xlabel('t')
    ylabel('W')
end

    