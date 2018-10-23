function energy()
    [X,V] = meshgrid(0:0.02:1,-1:0.03:1);
    subplot(1, 2, 1)
    a = 0.6;
    Z = 0.5 * V .* V - 10 * X .* (1 - X) .* (0.7 * X.^(1-a) - 0.3 * (1-X).^(1-a));
    surf(X, V, Z)
    
    subplot(1, 2, 2)
    a = 2.5;
    Z = 0.5 * V .* V - 10 * X .* (1 - X) .* (0.7 * X.^(1-a) - 0.3 * (1-X).^(1-a));
    surf(X, V, Z)
end