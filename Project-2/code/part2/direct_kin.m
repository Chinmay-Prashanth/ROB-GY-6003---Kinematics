function Pos_O=direct_kin(q)

Theta1=q(1);

Theta2=q(2);

d3=q(3);

Theta4=q(4);

% robot parameters

L1=1;

a1=0.5;

a2=0.5;

H_T=[cos(Theta1 + Theta2 + Theta4), -sin(Theta1 + Theta2 + Theta4), 0, a2*cos(Theta1 + Theta2) + a1*cos(Theta1); sin(Theta1 + Theta2 + Theta4), cos(Theta1 + Theta2 + Theta4), 0, a2*sin(Theta1 + Theta2) + a1*sin(Theta1); 0, 0, 1, L1 - d3; 0, 0, 0, 1];

result_T=H_T*[0;0;0;1];

Pos_O=[result_T(1:2);Theta1 + Theta2 + Theta4];% z relaxed



end