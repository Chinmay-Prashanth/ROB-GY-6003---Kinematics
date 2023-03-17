function pos = direct_kin(q)

theta1=q(1);
theta2=q(2);
d3=q(3);
L=1;
a1=0.5;
a2=0.5;


pos(1)=a2*cos(theta1 + theta2) + a1*cos(theta1);
pos(2)=a2*sin(theta1 + theta2) + a1*sin(theta1);
pos(3)=L-d3;

end