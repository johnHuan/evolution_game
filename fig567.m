
%% 子图1
set(gcf,'unit','centimeters','position',[2 2 12 25]); 
figure(1)
subplot(3,1,1)
clc;clear;
figure(1)
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.05 fig(2)-0.02 fig(3)+0.1 fig(4)+0.07]);
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2
%subplot(3,1,1)
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[i j k]);
        figure(1)
        grid on
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
zlabel('z','Rotation',360,'position',[0 0 1.05]);
%% 图2
subplot(3,1,2)
clc;clear;
figure(1)
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.05 fig(2)-0.04 fig(3)+0.1 fig(4)+0.07]);
R1=8,C1=4,L12=4,S12=2,R2=6,C2=4,S23=3,L23=2.5,C23=1,C3=2
%subplot(3,1,2)
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[i j k]);
        figure(1)
        grid on
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
zlabel('z','Rotation',360,'position',[0 0 1.05]);
%% 图3
subplot(3,1,3)
clc;clear;
figure(1)
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.05 fig(2)-0.06 fig(3)+0.1 fig(4)+0.07]);
R1=8,C1=4,L12=6,S12=3,R2=6,C2=4,S23=4,L23=3.5,C23=1,C3=2
%subplot(3,1,3)
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1   
        [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[i j k]);
        figure(1)
        grid on
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
        hold on
        axis([0 1 0 1 0 1])
        view([45 10])
        end
    end
end
xlabel('x','Rotation',0);
ylabel('y','Rotation',0);
zlabel('z','Rotation',360,'position',[0 0 1.05]);
ta=text(-2.85385965640394,2.9367017272037,3.23888575129451, '(a)');
tb=text(-2.67367924802755,2.76996669697858,1.84768489170764, '(b)');
tc=text(-2.4966654899505,2.61312100612841,0.508841049689951, '(c)');
saveas(figure(1),'.fig4.tif');  % 搞完了早点下班