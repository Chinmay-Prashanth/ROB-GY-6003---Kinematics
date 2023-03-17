function output=manipulator(input)
    Theta1 = input(1);
    Theta2 = input(2);
    d3 = input(3);
    Theta4 = input(4);

    y1 = input(5);
    y2 = input(6);
    y3 = input(7);
    y4 = input(8);

    Theta_d1 = input(9);
    Theta_d2 = input(10);
    d3_d = input(11);
    Theta_d4 = input(12);

    m_L1 = 25;
    m_L2 = 25;
    m_L3 = 10;
    m_L4 = 5;

    I_L1 = 5;
    I_L2 = 5;
    I_L4 = 1;

    Im1 = 0.0001;
    Im2 = 0.0001;
    Im3 = 0.01;
    Im4 = 0.005;

    a1 = 0.5;
    a2 = 0.5;

    g_R1 = 1;
    g_R2 = 1;
    g_R3 = 50;
    g_R4 = 20;

    g = 9.8;

    Fm1 = 0.0001;
    Fm2 = 0.0001;
    Fm3 = 0.01;
    Fm4 = 0.005;

    M=[I_L1 + I_L2 + I_L4 + Im2 + Im3 + Im4 + m_L1/16 + m_L2/16 - (a1*m_L1)/2 - (a2*m_L2)/2 + Im1*g_R1^2 + a1^2*m_L1 + a1^2*m_L2 + a1^2*m_L3 + a2^2*m_L2 + a1^2*m_L4 + a2^2*m_L3 + a2^2*m_L4 - (a1*m_L2*cos(Theta2))/2 + 2*a1*a2*m_L2*cos(Theta2) + 2*a1*a2*m_L3*cos(Theta2) + 2*a1*a2*m_L4*cos(Theta2), I_L2 + I_L4 + Im3 + Im4 + m_L2/16 - (a2*m_L2)/2 + a2^2*m_L2 + a2^2*m_L3 + a2^2*m_L4 + Im2*g_R2 - (a1*m_L2*cos(Theta2))/4 + a1*a2*m_L2*cos(Theta2) + a1*a2*m_L3*cos(Theta2) + a1*a2*m_L4*cos(Theta2), -Im3*g_R3, I_L4 + Im4*g_R4;
    I_L2 + I_L4 + Im3 + Im4 + m_L2/16 - (a2*m_L2)/2 + a2^2*m_L2 + a2^2*m_L3 + a2^2*m_L4 + Im2*g_R2 - (a1*m_L2*cos(Theta2))/4 + a1*a2*m_L2*cos(Theta2) + a1*a2*m_L3*cos(Theta2) + a1*a2*m_L4*cos(Theta2), I_L2 + I_L4 + Im3 + Im4 + m_L2/16 - (a2*m_L2)/2 + Im2*g_R2^2 + a2^2*m_L2 + a2^2*m_L3 + a2^2*m_L4, -Im3*g_R3, I_L4 + Im4*g_R4; 
    -Im3*g_R3, -Im3*g_R3, Im3*g_R3^2 + m_L3 + m_L4, 0;
    I_L4 + Im4*g_R4, I_L4 + Im4*g_R4,0, Im4*g_R4^2 + I_L4];

    N=[-Theta_d2*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), - Theta_d1*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)) - Theta_d2*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), 0, 0; Theta_d1*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0];

    Grav = [0; 
            0; 
            -(m_L3+m_L4)*g; 
            0];

    FV = [g_R1^2*Fm1 0 0 0;
          0 g_R2^2*Fm2 0 0;
          0 0 g_R3^2*Fm3 0;
          0 0 0 g_R4^2*Fm4];

    Torq = [y1;
            y2;
            y3;
            y4];

    Tx= N*[Theta_d1 Theta_d2 d3_d Theta_d4]'+FV*[Theta_d1 Theta_d2 d3_d Theta_d4]'+Grav;

    output = inv(M)*(Torq-Tx);
   
end


  