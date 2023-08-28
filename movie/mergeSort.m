%归并排序
%速度设置 规模设置
t=0;
length1 = 1000;

fig1 = figure("Name","merge");
%set(gca, 'position',[0.1,0.1,0.9,0.9]);
numbers = rand(length1,1);
bar1=bar(numbers,0.5,'k');
pause(1)
hold off;


MERGE_SORT(numbers,1,length(numbers),t)

pause(2);
close all;

%% 递归
function [A] = MERGE_SORT(A,p,r,t)%A是数组，p在前，q在后
    if p<r %判断是否到底，相等即只有一位数，不再分解
     q=floor((p+r)/2);%中间值，首尾相加除以2，再向下取整；
        bar1=bar(A,0.5,'k');
        bar1.FaceColor='flat';
        bar1.CData(q,:)=[0,1,0];
        pause(t);
     A=MERGE_SORT(A,p,q,t);%前半段
     A=MERGE_SORT(A,q+1,r,t);%后半段
     A=MERGE(A,p,q,r,t);%排序
    end
end
%%排序
function [A] = MERGE(A,p,q,r,t)%A是数组，p<=q<=r
L=A(p:q);%前半段
R=A(q+1:r);%后半段
L(end+1)=inf;%前半段哨兵   哨兵的用处：避免某个半段值已用完，无法做比较。
R(end+1)=inf;%后半段哨兵
i=1;%序号
j=1;%序号
for k=p:r %进行排序
        if L(i)<=R(j) %判断前后两个半段是谁先放
                A(k)=L(i);
                i=i+1;
                bar1=bar(A,0.5,'k');
                bar1.FaceColor='flat';
                bar1.CData(q,:)=[1,0,0];
                pause(t);
        else
                A(k)=R(j);
                j=j+1;
                bar1=bar(A,0.5,'k');
                bar1.FaceColor='flat';
                bar1.CData(q,:)=[1,0,0];
                pause(t);
        end
end
end

