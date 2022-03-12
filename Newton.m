function [ x ] = Newton( alpha,epsilon1,epsilon2,N )
%Newton 牛顿迭代法求解方程根
%alpha为初值，epsilon1和epsilon2为精度，N为最大迭代次数
x0=alpha;
for n=1:N
    F=f(x0);
    DF=df(x0);
    if abs(F)<epsilon1
        x=x0;
        return;
    end
    if abs(DF)<epsilon2
        x='fail';
        return;
    end
    x1=x0-F/DF;
    Tol=abs(x1-x0);
    if abs(Tol)<epsilon1
        x=x1;
        return;
    end
    x0=x1;
end
x='fail';
return;
end

