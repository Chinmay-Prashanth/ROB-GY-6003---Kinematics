function [q_dot]= jacobian_z_relax(Ke_q)

Ke=Ke_q(1:3);

Theta1=Ke_q(4);

Theta2=Ke_q(5);

d3=Ke_q(6);

a1=0.5;

a2=0.5;
L1=1;

Jacobian=[- a2*sin(Theta1 + Theta2) - a1*sin(Theta1), -a2*sin(Theta1 + Theta2), 0, 0; a2*cos(Theta1 + Theta2) + a1*cos(Theta1), a2*cos(Theta1 + Theta2), 0,0; 1, 1, 0, 1];

pseudo_inv=(transpose(Jacobian))/(Jacobian*transpose(Jacobian));

Result_initial=[0;0;0;0];

Result_initial(1)=(7*a2*cos(Theta1 + Theta2) + 4*a2*sin(Theta1 + Theta2) + 7*a1*cos(Theta1) + 4*a1*sin(Theta1))/(10*sqrt(abs((a2*cos(Theta1 + Theta2) + a1*cos(Theta1) - sym(2/5)))^2 + abs((d3 - L1 + sym(1/2)))^2 + abs((a2*sin(Theta1 + Theta2) + a1*sin(Theta1) + sym(7/10)))^2));
Result_initial(2)=(a2*(7*cos(Theta1 + Theta2) + 4*sin(Theta1 + Theta2) - 10*a1*sin(Theta2)))/(10*sqrt(abs((a2*cos(Theta1 + Theta2) + a1*cos(Theta1) - sym(2/5)))^2 + abs((d3 - L1 + sym(1/2)))^2 + abs((a2*sin(Theta1 + Theta2) + a1*sin(Theta1) + sym(7/10)))^2));
Result_initial(3)=(abs((d3 - L1 + sym(1/2)))*sign(d3 - L1 + sym(1/2)))/sqrt(abs((a2*cos(Theta1 + Theta2) + a1*cos(Theta1) - sym(2/5)))^2 + abs((d3 - L1 + sym(1/2)))^2 + abs((a2*sin(Theta1 + Theta2) + a1*sin(Theta1) + sym(7/10)))^2);

Result_initial(4)=0;

k_o= 70;

qo_dot_dot=k_o*(Result_initial);

q_dot=pseudo_inv*Ke+(eye(4,4)-pseudo_inv*Jacobian)*qo_dot_dot;

end