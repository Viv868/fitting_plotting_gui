function [x_data, ccdf] = ccdf(raw_data)
[cdf, x_data, ~] = cdfcalc(raw_data);
cdf = cdf(2:end);
ccdf = 1-cdf;
shape_x = size(x_data);
shape_y = size(ccdf);
if shape_x(2) ~= 1
    x_data = x_data';
end
if shape_y(2) ~= 1
    ccdf = ccdf';
end

end