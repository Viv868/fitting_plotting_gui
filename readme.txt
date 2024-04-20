Fitting_plot_gui:
1. File type: make sure your file contains only numeric data, and then save your excel file with data as ".csv" file. 
2. File path: please make sure only absolute path is used and make sure remove the double quotes after pasting the path.

3. Num of bins: It can be left as 0, then the default value(20) will be used.

4. Start point:
   * There are different default values for different fitting method. If the values shown in the "Start point" input box are seperated by space, that means default values for start points are used. 
   * If the start points need to be input manually, please seperate the values only by comma, otherwise there will be an error.
   * The numbers of start points for "single Exponential", "biExponential", "Gaussian" fitting are 2, 4, 3 respetively. If you don't enter the right number for start points, then default values will be used.

5. Formula used for curve fitting:
   * Single exponential fit: a * exp(-1/b * x) or 1-a * exp(-1/b * x) <if you choose CDF for "Data option">
   * Biexponential fit: a * exp(-1/b * x) + c * exp(-1/d * x) or 1-a * exp(-1/b * x) + c * exp(-1/d * x) * x) <if you choose CDF for "Data option">
   * Gaussian fit: a * exp(-(x-b)^2/2*c^2)

6. Output: the coefficients  was output as the order of a,b,c...parameters in the above formulas.
