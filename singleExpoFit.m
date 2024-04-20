function [para, gof, coefficients] = singleExpoFit(x_data, y_data, startPoint)

model = fittype(@(a, b, x) a * exp(-1/b * x), ...
    'independent', 'x', 'dependent', 'y', ...
    'coefficients', {'a', 'b'});
[para, gof] = fit(x_data, y_data, model, 'StartPoint', startPoint);
coefficients = [para.a, para.b];

end