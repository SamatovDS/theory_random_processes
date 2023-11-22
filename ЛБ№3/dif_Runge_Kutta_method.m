function S = dif_Runge_Kutta_method(f, a, b)

     t = linspace(a, b, 100000);
     h = t(2)-t(1);
     S = zeros(1, length(t));
     S(1) = 15;

     for i = 1:length(t)-1
         
        k1 = f(t(i), S(i), h);
        k2 = f(t(i) + 0.5 * h, (S(i) + 0.5 * h * k1), h);
        k3 = f((t(i) + 0.5 * h), (S(i) + 0.5 * k2), h);
        k4 = f((t(i) + h), (S(i) + k3 * h), h);

        S(i+1) = S(i) + 1/6 * (k1 + 2 * k2 + 2 * k3 + k4); 
     end
end
