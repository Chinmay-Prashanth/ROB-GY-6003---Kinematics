function output = direct_kin(input)

Theta1=input(1);
Theta2=input(2);
d3=input(3);
Theta4=input(4);

L1=1;
a1=0.5;
a2=0.5;

R=[cos(Theta1 + Theta2 + Theta4), -sin(Theta1 + Theta2 + Theta4), 0, a2*cos(Theta1 + Theta2) + a1*cos(Theta1); sin(Theta1 + Theta2 + Theta4), cos(Theta1 + Theta2 + Theta4), 0, a2*sin(Theta1 + Theta2) + a1*sin(Theta1); 0, 0, 1, L1 - d3; 0, 0, 0, 1];
HT=R*[0;0;0;1];

output=[HT(1:3);Theta1 + Theta2 + Theta4];
end