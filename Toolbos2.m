%mean_value = 10; % Mean of the Gaussian distribution
%std_deviation = 2; % Standard deviation of the Gaussian distribution
num_samples = 100; % Number of samples in the dataset

% Generate dataset
%data = mean_value + std_deviation * randn(num_samples, 1)

%[x, pdf] = pdfCalc(data, 20);
%[para, gof] = gaussFit(x, pdf);
%bar(x, pdf, 'hist');
%hold on;
%plot(x,feval(para,x), 'r');
%legend('rawdata', 'fit','Location', 'best');
%xlabel('Time Duration');
%ylabel('Probability Density');
%input = '1,1,1,1'; % 包含逗号分隔的字符串
%splitValues = strsplit(input, ','); % 将字符串拆分为单个元素
%numericValues = str2double(splitValues) % 将元素转换为数值
%list = numericValues(:).'
%isvector(list)
startP = '1,2,1,3'
numericValues = str2double(strsplit(startP, ',')); 
startP = numericValues(:).';
length(startP)
