function [ y ] = Lagrange( x0,y0,x )
%Lagrange    Lagrange插值法求解插值点近似值
%x0,y0为数据点及其函数值;x,y为插值点及其近似值
if length(x0)==length(y0)
    n=length(x0);
    y=0.0;
    for k=1:n
        l=1.0;
        for j=1:n
            if j~=k
                l=l*(x-x0(j))/(x0(k)-x0(j));
            end
        end
        y=y+l*y0(k);
    end
else
    disp("输入数据点错误");
end
end

