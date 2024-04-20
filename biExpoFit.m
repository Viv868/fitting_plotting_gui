function [para, gof, coefficients] = biExpoFit(x_data, y_data, startPoint)
% you could set offset in the formula below, and also add the offset t0 to
% the braces behind the purple'coefficient'
model = fittype(@(a, b, c, d, x) a * exp(-1/b * x) + c * exp(-1/d * x), ...
    'independent', 'x', 'dependent', 'y', ...
    'coefficients', {'a', 'b', 'c', 'd'});

[para, gof] = fit(x_data, y_data, model,'StartPoint', startPoint);
%if there's offset t0, add 'para.t0' in the square brackets, after para.d
coefficients = [para.a, para.b, para.c, para.d];

end