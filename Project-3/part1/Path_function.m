function [P] = Path_function()

P0=[0;-0.8;0]; P1=[0;-0.8;0.5]; P2=[0.5;-0.6;0.5]; P3=[0.8;0;0.5]; P4=[0.8;0;0];

T=0:0.001:4;

sf1=norm_function(P0,P1);   
si1=0;
tf1=0.6;
ti1=0;
[b1]=traj_function(sf1,si1,tf1,ti1);
s1=b1(1,:);
s1_d=b1(2,:);
s1_d_d=b1(3,:);

sf2=norm_function(P1,P2);
si2=0;
tf2=2.2;
ti2=0.4;
[b2]=traj_function(sf2,si2,tf2,ti2);
s2=b2(1,:);
s2_d=b2(2,:);
s2_d_d=b2(3,:);

sf3=norm_function(P2,P3);
si3=0;
tf3=3.6;
ti3=1.8;
[b3]=traj_function(sf3,si3,tf3,ti3);
s3=b3(1,:);
s3_d=b3(2,:);
s3_d_d=b3(3,:);

sf4=norm_function(P3,P4);
si4=0;
tf4=4;
ti4=3.4;
[b4]=traj_function(sf4,si4,tf4,ti4);
s4=b4(1,:);
s4_d=b4(2,:);
s4_d_d=b4(3,:);

for i=1:length(T)
pe(:,i)=P0+s1(i)*(P1-P0)/norm_function(P0,P1)+s2(i)*(P2-P1)/norm_function(P1,P2)+s3(i)*(P3-P2)/norm_function(P2,P3)+s4(i)*(P4-P3)/norm_function(P3,P4);
end
pd=pe;

for i=1:length(T)
pe_d(:,i)=s1_d(i)*(P1-P0)/norm_function(P0,P1)+s2_d(i)*(P2-P1)/norm_function(P1,P2)+s3_d(i)*(P3-P2)/norm_function(P2,P3)+s4_d(i)*(P4-P3)/norm_function(P3,P4);
end
pd_d=pe_d;

for i=1:length(T)
pe_d_d(:,i)=s1_d_d(i)*(P1-P0)/norm_function(P0,P1)+s2_d_d(i)*(P2-P1)/norm_function(P1,P2)+s3_d_d(i)*(P3-P2)/norm_function(P2,P3)+s4_d_d(i)*(P4-P3)/norm_function(P3,P4);
end
pd_d_d=pe_d_d;

P=[pd;
   pd_d;
   pd_d_d;
   T]; 
end