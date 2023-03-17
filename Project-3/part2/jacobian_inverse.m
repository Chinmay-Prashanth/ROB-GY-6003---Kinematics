function [output]=jacobian_inverse(input)

Ke=input(1:4);

Theta1=input(5);
Theta2=input(6);
a1=0.5;
a2=0.5;

Jin=[- a2*sin(Theta1 + Theta2) - a1*sin(Theta1), -a2*sin(Theta1 + Theta2), 0, 0; a2*cos(Theta1 + Theta2) + a1*cos(Theta1), a2*cos(Theta1 + Theta2), 0,0; 0, 0, -1, 0; 1, 1, 0, 1];

output = inv(Jin)*Ke;

end