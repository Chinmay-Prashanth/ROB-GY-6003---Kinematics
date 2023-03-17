function x = direct_kin(q)
theta1 = q(1);
theta2 = q(2);
d3 = q(3);
theta4 = q(4);
L = 1;
a1 = 0.5;
a2 = 0.5;
H_f = [cos(theta1 + theta2 + theta4), -sin(theta1 + theta2 + theta4), 0, a2*cos(theta1 + theta2) + a1*cos(theta1); sin(theta1 + theta2 + theta4), cos(theta1 + theta2 + theta4), 0, a2*sin(theta1 + theta2) + a1*sin(theta1); 0, 0, 1, L - d3; 0, 0, 0, 1];
result_1 = H_f*[0;0;0;1];
x = [result_1(1:3);theta1+theta2+theta4];
end