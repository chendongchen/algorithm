%2023/8/21 陈东
%特征值与向量在线性代数领域非常有用
%相关函数为 eig

a=[5 6 4 2;3 -5 8 9;7 2 8 -1;3 0 8 8];
[v,d] = eig(a)

b=a*d
%验证

%平滑处理 B=T^(-1)AT ; T是对角阵
[C,T] = balance(a)

E=a*a*a

[p,j]=jordan(a)
c=p*j*j*j*inv(p)
d=a*a*a