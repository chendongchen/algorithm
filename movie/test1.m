%2023/8/27 陈东

%动画画面
% fig = figure;
% x = linspace(0, 2*pi, 100);
% im = cell(1, 20);
% for i = 1:20
%     y = sin(i*x/5);
%     plot(x, y, 'Color', 'b', 'LineWidth', 2);
%     xlim([0, 2*pi]);
%     pause(0.25);
%     % 注释下面两句话可以看到动态输出
%     frame = getframe(fig);
%     im{i} = frame2im(frame);
% end

%柱状图绘制 bar

%cerate a rand lines
fig2 = figure;
randnumbers = rand(10,1);
bar1=bar(randnumbers,0.5);
bar1.FaceColor='flat';

%用于交换的标注
bar1.CData(2,:)=[0 0 0];
bar1.CData(3,:)=[1 0 0];
pause(0.25);

pause(3)
%关闭画面
hold off;
randnumbers = rand(10,1);
bar1=bar(randnumbers,0.5);
