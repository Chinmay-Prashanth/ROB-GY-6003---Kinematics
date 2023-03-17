function J_d=jacobian_dot(q_a_q_dot)

Theta1=q_a_q_dot(1);

Theta2=q_a_q_dot(2);


Theta1_dot=q_a_q_dot(5);

Theta2_dot=q_a_q_dot(6);

D3_dot=q_a_q_dot(7);

Theta4_dot=q_a_q_dot(8);

Q_dot=[Theta1_dot;Theta2_dot;D3_dot;Theta4_dot];

a1=0.5;

a2=0.5;

J_d_aux=[- a2*cos(Theta1 + Theta2)*(Theta1_dot + Theta2_dot) - a1*cos(Theta1)*Theta1_dot, -a2*cos(Theta1 + Theta2)*(Theta1_dot + Theta2_dot), 0, 0; - a2*sin(Theta1 + Theta2)*(Theta1_dot + Theta2_dot) - a1*sin(Theta1)*Theta1_dot, -a2*sin(Theta1 + Theta2)*(Theta1_dot+ Theta2_dot), 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];

J_d=J_d_aux*Q_dot;
end