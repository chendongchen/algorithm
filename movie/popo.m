%冒泡排序
%速度设置 规模设置
t=0.001;
length1 = 100;

fig1 = figure("Name","popo");
%set(gca, 'position',[0.1,0.1,0.9,0.9]);
numbers = rand(length1,1);
bar1=bar(numbers,0.5,'k');
pause(1)
hold off;

for i = length1-1:-1:1
    bar1=bar(numbers,0.5,'k');
    bar1.FaceColor='flat';
    for j = 1:i
        if(numbers(j)>numbers(j+1))
            temp=numbers(j);
            numbers(j)=numbers(j+1);
            numbers(j+1)=temp;
            pause(10*t)
            bar1=bar(numbers,0.5,'k');
            bar1.FaceColor='flat';
            bar1.CData(j,:)=[0,1,0];
            bar1.CData(i+1,:)=[1,0,0];
            bar1.CData(j+1,:)=[0,1,0];
        end
        if(j>1)
            bar1.CData(j-1,:)=[0,0,0];
        end
        bar1.CData(j,:)=[0,1,0];
        pause(t);
    end
end

close all;