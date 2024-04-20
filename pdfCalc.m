function [x_center, pdf_values] = pdfCalc(raw_data, num_bins)
bin_width = range(raw_data) / num_bins;
[counts, edges] = histcounts(raw_data, num_bins);
pdf_values = counts ./ sum(counts) ./ bin_width;  % density
x_center = edges(1:end-1) + bin_width / 2;
shape_x = size(x_center);
shape_y = size(pdf_values);
if shape_x(2) ~= 1
    x_center = x_center';
end
if shape_y(2) ~= 1
    pdf_values = pdf_values';
end
end
    
    