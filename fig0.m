%% 子图1
close('all')
clc;clear;
figure(1)
set(gcf,'unit','centimeters','position',[2 2 8.4 7]); 
fig = get(gca,'position');
set (gca,'position',[fig(1)-0.001 fig(2)+0.04 fig(3)+0.05 fig(4)+0.03]);
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2
%subplot(3,1,1)
set(0,'defaultfigurecolor','w')
[t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0,10],[0.5,0.4,0.3]);
points=1:1:length(t);
plot(t,y(:,1),'r^-','linewidth',1,'markersize',3,'markerfacecolor','r','markerindices',points);
hold on
plot(t,y(:,2),'g--','linewidth',1);
hold on
plot(t,y(:,3),'y-.','Color',[161/255,114/255,255/255], 'linewidth',1);
hold on
set(gca,'XTick', (0:1:10), 'YTick', [0.0:0.2:1.0])
set(gca,'YTickLabel',num2str(get(gca,'YTick')','%.1f'));
axis([0 5 -0.05 1.05])
% xlabel('$Time$','interpreter','latex');
xlabel('Stage', 'fontsize', 10);
% ylabel('概率');
ylabel('Probability', 'fontsize', 10);
lgd=legend('Government({\it\fontname{Bodoni MT}x})','Owner({\it\fontname{Bodoni MT}y})','Whole-process cost consultant({\it\fontname{Bodoni MT}z})');
set(lgd,'Position',[0.138187206114839 0.178147670637863 0.79979035639413 0.222921914357682], 'box', 'off', 'fontsize', 10)
saveas(figure(1), 'Fig. 1.1.tif')

%% 子图2
clc;clear;
figure(2)
set(gcf,'unit','centimeters','position',[2 2 10 8]); 
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for i=0.2
    figure(2)
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
    legend({'S12=3','S12=5','S12=7'},'location','northeast');
end
%% 子图3
clc;clear;
figure(3)
set(gcf,'unit','centimeters','position',[2 2 10 8]); 
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for i=0.2
    figure(3)
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
    legend({'L12=3','L12=5','L12=7'},'location','northeast');
end
%% 子图4
clc;clear;
figure(4)
set(gcf,'unit','centimeters','position',[2 2 10 8]); 
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for i=0.2
    figure(4)
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
    legend({'S23=3','S23=5','S23=7'},'location','northeast');
end
%% 子图5
clc;clear;
figure(5)
set(gcf,'unit','centimeters','position',[2 2 10 8]); 
% the 1st line
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=2,L23=1.5,C23=1,C3=2    
for i=0.2
    figure(5)
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
R1=8,C1=4,L12=2,S12=1,R2=6,C2=4,S23=3,L23=3.5,C23=1,C3=2  
for k=0.2
    [t,y]=ode45(@(t,y) xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z','Rotation',360,'position',[-0.1 1 1.1]);
    grid on
    hold on  
    legend({'L12=1.5','L12=2.5','L12=3.5'},'location','northeast');
end