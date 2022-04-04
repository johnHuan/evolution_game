function dydt=xiangmu(t,y,R1,C1,L12,R2,C2,S23,L23,S12,C23,C3)
dydt=zeros(3,1);
dydt(1)=y(1)*(1-y(1))*(R1-C1+L12-y(2)*(S12+L12));
dydt(2)=y(2)*(1-y(2))*(R2-C2-C23+L23+y(1)*(S12+L12)-y(3)*(S23-C23+L23));
dydt(3)=y(3)*(1-y(3))*(y(2)*(S23+L23)-C3);
end