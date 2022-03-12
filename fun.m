function [ result ] = fun( x,y )
% fun    计算某一点处的导数值
result=-20*(y-exp(x)*sin(x))+exp(x)*(sin(x)+cos(x));
end

