%插入排序
%速度设置,规模设置。
t=0;
length1 = 1000;
fig1 = figure("Name","insert");
%set(gca, 'position',[0.1,0.1,0.9,0.9]);
numbers = rand(length1,1);
bar1=bar(numbers,0.5,'k');
pause(1)
hold off;

for i = 1:length1-1
    bar1=bar(numbers,0.5,'k');
    bar1.FaceColor='flat';
    for j = i:-1:1
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
        bar1.CData(j+1,:)=[0,0,0];
        bar1.CData(j,:)=[0,1,0];
        pause(t);
    end
end

close all;