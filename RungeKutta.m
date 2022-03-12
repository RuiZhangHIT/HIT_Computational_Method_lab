function [ x,y ] = RungeKutta( a,b,alpha,N )
%RungeKutta 四阶龙格库塔方法求解微分方程初值问题
%x,y为初值问题数值解，a,b为区间，alpha为a处的值，N为等分的段数
x=ones(1,N);
y=ones(1,N);
x0=a;
y0=alpha;
h=(b-a)/N;
for n=1:N
    K1=h*fun(x0,y0);
    K2=h*fun(x0+h/2,y0+K1/2);
    K3=h*fun(x0+h/2,y0+K2/2);
    K4=h*fun(x0+h,y0+K3);
    x1=x0+h;
    y1=y0+(K1+2*K2+2*K3+K4)/6;
    x(n)=x1;
    y(n)=y1;
    x0=x1;
    y0=y1;
end
end