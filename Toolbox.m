path = "C:\Users\yqz5999\Desktop\Matlab_codes\raw_data.csv";
raw_data = getRawData(path);
[x, y] = pdfCalc(raw_data, 30);
numericValues = str2double(strsplit('1,1', ',')); 
startPoint = numericValues(:).';
[para,gof] = singleExpoFit(x, y,startPoint);
s =append('RSquare: ', num2str(gof.rsquare))
%plotCurve(1,x, y,para)
%title('Probability Density Function of Time Duration');
confint(para)
'Coefficients: ', num2str('1,2'),'\n','Confi_interval: ',mat2str(confint(para)')

