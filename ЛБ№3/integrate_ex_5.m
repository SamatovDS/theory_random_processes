function B = integrate_ex_5(f, a, b)

    right_board = a:0.5:b; 
    B = zeros(1, 9);

     for i = 1:9
         B(i) = 15 * exp(int_trapez_method(f, a, right_board(i), 2));
     end 

end