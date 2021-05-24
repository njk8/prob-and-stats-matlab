clear;

x = [4.4 3.9 4.0 4.0 3.5 4.1 2.3 4.7 1.7 4.9 1.7 4.6 3.4 4.3 1.7 3.9 3.7 3.1 4.0 1.8 ...
4.1 1.8 3.2 1.9 4.6 2.0 4.5 3.9 4.3 2.3 3.8 1.9 4.6 1.8 4.7 1.8 4.6 1.9 3.5 4.0 ...
3.7 3.7 4.3 3.6 3.8 3.8 3.8 2.5 4.5 4.1 3.7 3.8 3.4 4.0 2.3 4.4 4.1 4.3 3.3 2.0 ...
4.3 2.9 4.6 1.9 3.6 3.7 3.7 1.8 4.6 3.5 4.0 3.7 1.7 4.6 1.7 4.0 1.8 4.4 1.9 4.6 ...
2.9 3.5 2.0 4.3 1.8 4.1 1.8 4.7 4.2 3.9 4.3 1.8 4.5 2.0 4.2 4.4 4.1 4.1 4.0 4.1 ...
2.7 4.6 1.9 4.5 2.0 4.8 4.1]';

y = [78 74 68 76 80 84 50 93 55 76 58 74 75 80 56 80 69 57 90 42 91 51 79 53 82 51 76 ...
82 84 53 86 51 85 45 88 51 80 49 82 75 73 67 68 86 72 75 75 66 84 70 79 60 86 71 ...
67 81 76 83 76 55 73 56 83 57 71 72 77 55 75 73 70 83 50 95 51 82 54 83 51 80 78 ...
81 53 89 44 78 61 73 75 73 76 55 86 48 77 73 70 88 75 83 61 78 61 81 51 80 79]';

plot(x,y,'b*')
corr(x,y)

stats = regstats(y,x,'linear','all');
betahat = stats.tstat.beta
se = stats.tstat.se
t = stats.tstat.t
s2 = stats.mse

% plotting the regression line 
yp = betahat(2) * x + betahat(1);
hold on
plot(x,yp)

% 3
%plotting using the given functions
figure
scatter(x,y,'*')
xlabel('x'), ylabel('y')
hold on
lsline % ls = least square, this is how we obtain the regression line

% commented below since we get the value directly from regstat function
%S = sqrt(s2/(numel(x)-numel(betahat)-1))
%SB0 = S* sqrt(betahat(1))
%SB1 = S* sqrt(betahat(2))

% 4 - Test hypothesis  
SB2 = se(2)
SB1 = se(1)
TS_1 = (betahat(2) - 0 )/ SB2

% 5
residualer = stats.r;
figure
scatter(x,residualer,'filled')
title('Residualer')

