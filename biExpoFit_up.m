function [para, gof, coefficients] = biExpoFit_up(x_data, y_data, startPoint)

model = fittype(@(a, b, c, d, x) 1-(a * exp(-1/b * x) + c * exp(-1/d * x)), ...
    'independent', 'x', 'dependent', 'y', ...
    'coefficients', {'a', 'b', 'c', 'd'});

[para, gof] = fit(x_data, y_data, model,'StartPoint', startPoint);
coefficients = [para.a, para.b, para.c, para.d]


end