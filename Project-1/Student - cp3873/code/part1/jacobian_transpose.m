function dqdt = jacobian_transpose(Kin_q)
Kin = Kin_q(1:4);
theta1 = Kin_q(5);
theta2 = Kin_q(6);
a1 = 0.5;
a2 = 0.5;

jacobian = [- a2*sin(theta1 + theta2) - a1*sin(theta1), -a2*sin(theta1 + theta2), 0, 0; a2*cos(theta1 + theta2) + a1*cos(theta1), a2*cos(theta1 + theta2), 0,0;  0, 0, -1, 0; 1, 1, 0, 1];

dqdt = transpose(jacobian)*Kin;
end