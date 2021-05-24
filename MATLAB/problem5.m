clear;
x = [41 41 42 43 54 53 57 58 63 66 67 67 67 68 69 70 70 70 70 72 73 ...
75 75 76 76 78 79 81 85 86 86 88]';
y = [1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0]';

fit1=fitglm(x,y,'distr','binomial')

% Test hypothesis

TS = -0.25083 / 0.10029

%predicting for x value when equal to 65
yp1 = 65 * -0.25083 +  16.328

prob= 1.024341/2.024341