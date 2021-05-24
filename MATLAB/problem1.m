n=600; % n throws of the die
% Simulate one throw of the die
%throw = randi(6,n,1);
throw(101:115)

% frequency of 1 to 6

for i = 1:6
     
     fprintf('Frequency of : %d is %d\n', i,sum(throw==i));
    
end

%Histogram to plot the frequencies

figure
hist(throw,[1:6])

% Sample mean
sample_mean = mean(throw)
% Sample standard deviation
sample_standard_deviation = std(throw)

%computing the mean manually
mean1=sum(throw)/n
mean1

%computing the standard deviation manually
sum1=sum((throw-mean1).^2)
val=sum1/n
stddev= sqrt(val)