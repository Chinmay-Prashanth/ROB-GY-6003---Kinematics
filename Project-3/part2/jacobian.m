function [output]=jacobian(input)

    Theta1=input(1,:);
    Theta2=input(2,:);
    a1=0.5;
    a2=0.5;

    Ja = [- a2*sin(Ang1 + Ang2) - a1*sin(Ang1), -a2*sin(Ang1 + Ang2), 0, 0; 
            a2*cos(Ang1 + Ang2) + a1*cos(Ang1), a2*cos(Ang1 + Ang2), 0,0; 
            0, 0, -1, 0;
            1, 1, 0, 1];

    q_d = [input(5,:);
           input(6,:);
           input(7,:);
           input(8,:)];

    output = Ja*q_d;
end
