%快数排序
%速度设置 规模设置
t=0.001;
length1 = 100;
fig1 = figure("Name","insert");
%set(gca, 'position',[0.1,0.1,0.9,0.9]);

numbers = rand(length1,1);
bar1=bar(numbers,0.5,'k');
pause(1)
hold off;

mya=myQuickSort(numbers,1,length1,t);

pause(2);

close all;

function a=myQuickSort(a,leftIndex,rightIndex,t)
    % a是待排序序列
    %leftIndex和rightIndex是开始的左右两个边界
    %%----------------------------------------------------------%%
    % if leftIndex>rightIndex
    %     break;
    % end
    if leftIndex<rightIndex
        i=leftIndex;
        j=rightIndex;
        temp=a(i);%选定的这个数挖掉，相当于挖坑
        while i<j
            bar1=bar(a,0.5,'k');
            bar1.FaceColor='flat';
            bar1.CData(i,:)=[0,1,0];
            while (i<j)&&(a(j)>=temp) 
                %从右往左，找到第一个小于设定的数，
                j=j-1;
                bar1.CData(j,:)=[0,1,0];
                pause(t);
            end
            a(i)=a(j);%将找到的第一个小于设定的数填坑到最开始挖的坑里面去
            bar1.CData(i,:)=[1,0,0];
            pause(10*t);
            while (i<j)&&(a(i)<=temp)
                %从左到右，找到第一个大于选定的数
                i=i+1;
                bar1.CData(i,:)=[0,1,0];
                pause(t);
            end
            a(j)=a(i);%将找到的第一个大于选定的数填入上一步挖的坑里面去
            bar1.CData(j,:)=[1,0,0];
            pause(10*t);
    %     if i==j
    %         a(j)=temp;

    %     end
        end
        a(j)=temp;%最后，i=j，将选定的数再填到上一步挖的坑里面去
        bar1.CData(j,:)=[1,0,0];
        pause(10*t);
        a=myQuickSort(a,leftIndex,j-1,t);%对左边序列进行递归
        a=myQuickSort(a,i+1,rightIndex,t);%对右边序列进行递归
    end
    end
    