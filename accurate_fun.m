function [ y ] = accurate_fun( x )
%accurate_fun ���㾫ȷ��
n=length(x);
y=ones(1,n);
for i=1:n
    y(i)=sin(x(i))*exp(x(i));
end
end