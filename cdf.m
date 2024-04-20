function [x_data,cdf] = cdf(raw_data)
[cdf, x_data, ~] = cdfcalc(raw_data);
cdf = cdf(2:end);
shape_x = size(x_data);
shape_y = size(cdf);
if shape_x(2) ~= 1
    x_data = x_data';
end
if shape_y(2) ~= 1
    cdf = cdf';
end

end

