function [ p ] = ditui( n )
%ditui �ɵ��Ʒ�ʽ����ʽ
syms x;
if n==0
    p=1;
elseif n==1
    p=2*x;
else
    p=(2*x)*ditui(n-1)-2*(n-1)*ditui(n-2);
end    
end

