function p = my_polyfit(x, y, deg)
    X_matrix = zeros(length(x), deg + 1);
    
    for a = 1:(length(x))
        for b = 1:(deg + 1) 
            X_matrix(a, b) = x(a)^(deg - (b - 1));
        end
    end
    
    p = (X_matrix' * X_matrix) \ (X_matrix' * y);
end

