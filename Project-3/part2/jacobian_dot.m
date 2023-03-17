function [output]=jacobian_dot(input)
Theta1=input(1);
Theta2=input(2);
Theta1_d=input(5);
Theta2_d=input(6);
d3_d=input(7);
Theta4_d=input(8);

q_d=[Theta1_d;
     Theta2_d;
     d3_d;
     Theta4_d];

a1=0.5;
a2=0.5;

Jd=[- a2*cos(Theta1 + Theta2)*(Theta1_d + Theta2_d) - a1*cos(Theta1)*Theta1_d, -a2*cos(Theta1 + Theta2)*(Theta1_d + Theta2_d), 0, 0; - a2*sin(Theta1 + Theta2)*(Theta1_d + Theta2_d) - a1*sin(Theta1)*Theta1_d, -a2*sin(Theta1 + Theta2)*(Theta1_d+ Theta2_d), 0, 0; 0, 0,0, 0; 0, 0, 0, 0];

output=Jd*q_d;