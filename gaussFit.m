function [para, gof, coefficients] = gaussFit(x_data, y_data, startPoint)

[para, gof] = fit(x_data, y_data, 'gauss1', 'StartPoint', startPoint);
coefficients = [para.a1, para.b1, para.c1];
end