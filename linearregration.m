
n=length(xs1);

sumx=sum(xs1,1);
sumy=sum(ys1,1);
sumxy=sum(xs1.'*ys1,1);
sumx2=sum(xs1.'*xs1,1);
b1=(n*sumxy-sumx*sumy)./(n*sumx2-(sumx).^2);
b0=(sumy-sumx*b1)./n;

%x=linspace(min(xs),max(xs),25);

Estimate_y=b0+b1*xs1;
Residuals=ys1-Estimate_y;
%sume=sum(e,1);
subplot(2,1,1);
plot(xs1,ys1,'.b');
hold on ;
plot(xs1,Estimate_y,'-r');
xlabel(' Arm Strength-x');
ylabel(' Estimate-y ');
hold off;

subplot(2,1,2);
plot(xs1,zeros(1,25),'-r');
hold on ;
plot(xs1,Residuals,'.b');
xlabel(' Arm Strength-x');
ylabel(' Residuals ');
hold off;


