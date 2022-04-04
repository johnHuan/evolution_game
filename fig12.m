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
R1=8,C1=4,L12=2,S12=2,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2  
for j=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 j 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'b-','linewidth',1);
    hold on     
end  
% the 3rd line
R1=8,C1=4,L12=2,S12=3,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2 
for k=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'S12=1','S12=2','S12=3'},'location','northeast');
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
R1=8,C1=4,L12=4,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for j=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 j 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'b-','linewidth',1);
    hold on     
end  
% the 3rd line
R1=8,C1=4,L12=6,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for k=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'L12=2','L12=4','L12=6'},'location','northeast');
end
hold on 
text(-3.89640834907311,-1.38988456417884,3.76464206651296, '(a)','interpreter','latex');
text(-2.53249121236524,-2.44713206558815,3.74997033781749, '(b)','interpreter','latex');

saveas(figure(1),'.fig2.tif');  % 搞完了早点下班