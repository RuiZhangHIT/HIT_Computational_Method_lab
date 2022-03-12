function [ y ] = Lagrange( x0,y0,x )
%Lagrange    Lagrange��ֵ������ֵ�����ֵ
%x0,y0Ϊ���ݵ㼰�亯��ֵ;x,yΪ��ֵ�㼰�����ֵ
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
    disp("�������ݵ����");
end
end

