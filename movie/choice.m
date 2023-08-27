%选择排序
%速度设置 规模设置
t=0.001;
length1 = 100;
fig1 = figure("Name","choise");
%set(gca, 'position',[0.1,0.1,0.9,0.9]);
numbers = rand(length1,1);
bar1=bar(numbers,0.5,'k');
pause(2)
hold off;

for i = 1:length1-1
    bar1=bar(numbers,0.5,'k');
    bar1.FaceColor='flat';
    bar1.EdgeColor="w";
    now = i;
    for j = 1+i:length1
        bar1.CData(j-1,:)=[0,0,0];
        bar1.CData(j,:)=[0,1,0];
        if(numbers(now)>numbers(j))
            t1=now;
            bar1.CData(t1,:)=[0,0,0];
            now=j;
        end
        bar1.CData(i,:)=[1,0,0];
        bar1.CData(now,:)=[1,0,0];
        pause(t);
    end
    temp=numbers(i);
    numbers(i)=numbers(now);
    numbers(now)=temp;
    pause(10*t)
end

close all;