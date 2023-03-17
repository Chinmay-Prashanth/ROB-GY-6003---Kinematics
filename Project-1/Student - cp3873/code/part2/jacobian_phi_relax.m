function dqdt = jacobian_phi_relax(Kin_q)
Kin=Kin_q(1:3);
theta1=Kin_q(4);
theta2=Kin_q(5);
q1=Kin_q(4);
q2=Kin_q(5);
q3=Kin_q(6);
q4=Kin_q(7);
a1=0.5;
a2=0.5;
jacobian=[- a2*sin(theta1 + theta2) - a1*sin(theta1), -a2*sin(theta1 + theta2), 0, 0; a2*cos(theta1 + theta2) + a1*cos(theta1), a2*cos(theta1 + theta2), 0,0; 0, 0, -1,0];
kf=10;
qf=[-(4*kf*q1)/pi^2; 
    -(32*kf*(2*q2 + pi/4))/(9*pi^2);
    -kf*((64*q3)/9 + (40/9));
    -(kf*q4)/(4*pi^2)];
p_inv=(transpose(jacobian))/(jacobian*transpose(jacobian));

dqdt = p_inv*Kin+(eye(4,4)-p_inv*jacobian)*qf;

end
