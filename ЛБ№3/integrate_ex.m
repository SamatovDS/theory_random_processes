function S = integrate_ex(f_1, f_2, a, b, eps, delta)
    
    N = 1 / (4 * eps ^ 2 * delta);
    right_board = a:0.5:b; 
    S = zeros(1, 9);
    S(1) = 15;
    
    for i = 1:8
        res_1 = int_trapez_method(f_1, a, right_board(i+1), 2);
        res_2 = int_Monte_Carlo_method(f_2, i, right_board(i+1), N);
        S(i+1) = S(1) * exp(res_1 + res_2);
    end

end