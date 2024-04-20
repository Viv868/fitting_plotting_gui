function plotCurve(bar_marker, x, y, para,app)
if bar_marker == 1
    bar(app.UIAxes,x, y, 'b');
else
    scatter(app.UIAxes,x, y, 'b');
end

hold(app.UIAxes,'on');
plot(app.UIAxes,x, feval(para,x), 'r'); 
legend(app.UIAxes,'rawData', 'Fit');
hold(app.UIAxes,'off')

end