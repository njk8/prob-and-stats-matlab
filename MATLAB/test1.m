clear;
n = 10;
m = 12;
mu1 = 22;
mu2 = 16;
sigma = 2;
% Generate observations
x = normrnd(mu1,sigma,n,1);
y = normrnd(mu2,sigma,m,1);

 

[H,P,CI,STATS] = ttest2(x,y,0.05,'both','equal')

 

c1 = (mean(x)-mean(y)) - (sqrt((std(x).^2/10) + (std(y).^2/12)) * 1.96)
c2 = (mean(x)-mean(y)) + (sqrt((std(x).^2/10) + (std(y).^2/12)) * 1.96)

 

TS = (mean(x)- mean(y))/sqrt((std(x).^2/10) + (std(y).^2/12))