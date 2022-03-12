function [ x ] = Newton( alpha,epsilon1,epsilon2,N )
%Newton ţ�ٵ�������ⷽ�̸�
%alphaΪ��ֵ��epsilon1��epsilon2Ϊ���ȣ�NΪ����������
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

