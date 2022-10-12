function [D]=Distance(M)
Temp=ones(size(M));
L{1}=M;%当前的最高阶可达矩阵
S=M;%当前的部分和
i=1;
while 1
    Temp=logical(L{i}*M)-S;
    Temp(Temp<0)=0;%消去负值
    Temp=Temp-diag(diag(Temp));%消去对角线
    Temp=logical(Temp);%变成0,1逻辑阵
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