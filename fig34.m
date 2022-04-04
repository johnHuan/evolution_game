%% 子图1
set(gcf,'unit','centimeters','position',[0.4 1 18 8]); 
subplot(1,2,1)
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.06 fig(2)+0.02 fig(3)+0.06 fig(4)]);
clc;clear;
figure(1)
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2      
for i=0.2
    figure(1)
    set(0,'defaultfigurecolor','w')
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[i 0.2 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
    hold on 
end
% the 2nd line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=3,L23=1.5,C23=1,C3=2    
for j=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 j 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'b-','linewidth',1);
    hold on     
end  
% the 3rd line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=4,L23=1.5,C23=1,C3=2     
for k=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'S23=2','S23=3','S23=4'},'location','northeast');
end
%% 子图2
set(gcf,'unit','centimeters','position',[0.4 1 18 8]); 
subplot(1,2,2)
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.01 fig(2)+0.02 fig(3)+0.06 fig(4)]);
clc;clear;
figure(1)
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2  
for i=0.2
    figure(1)
    set(0,'defaultfigurecolor','w')
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[i 0.2 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
    hold on 
end
% the 2nd line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=2.5,C23=1,C3=2 
for j=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 j 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'b-','linewidth',1);
    hold on     
end  
% the 3rd line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=3.5,C23=1,C3=2 
for k=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'L23=1.5','L23=2.5','L23=3.5'},'location','northeast');
end
hold on 
text(-3.9078130790293,-1.37045630101018,3.7793137800764, '(a)','interpreter','latex');
text(-2.52769841198771,-2.42945556765655,3.7793137966208, '(b)','interpreter','latex');
saveas(figure(1),'.fig3.tif');  % 搞完了早点下班