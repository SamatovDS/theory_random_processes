function ans = int_trapez_method(f, a, b, n)

    h = (b - a) / n;
    sum = f(a) + f(b);
    x = a;
    
    for i = 1:n-1
        x = x + h;
        sum = sum + 2 * f(x); 
    end

    ans = h / 2 * sum;

end
    
    