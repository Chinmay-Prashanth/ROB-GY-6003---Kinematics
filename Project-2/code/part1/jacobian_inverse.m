function q_d_dot= jacobian_inverse(Ke_q)

Ke=Ke_q(1:4);

Theta1=Ke_q(5);

Theta2=Ke_q(6);

a1=0.5;

a2=0.5;

Jacobian=[- a2*sin(Theta1 + Theta2) - a1*sin(Theta1), -a2*sin(Theta1 + Theta2), 0, 0; a2*cos(Theta1 + Theta2) + a1*cos(Theta1), a2*cos(Theta1 + Theta2), 0, 0; 0, 0, -1, 0; 1, 1, 0, 1];

q_d_dot=inv(Jacobian)*Ke;

end