function [D]=Distance(M)
Temp=ones(size(M));
L{1}=M;%��ǰ����߽׿ɴ����
S=M;%��ǰ�Ĳ��ֺ�
i=1;
while 1
    Temp=logical(L{i}*M)-S;
    Temp(Temp<0)=0;%��ȥ��ֵ
    Temp=Temp-diag(diag(Temp));%��ȥ�Խ���
    Temp=logical(Temp);%���0,1�߼���
    i=i+1;
    L{i}=Temp;
    S=S+i*L{i};
    if ~any(any(L{i}))
        break;
    end
    %disp(num2str(i));
end
D=S;
end