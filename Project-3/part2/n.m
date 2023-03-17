function output=n(input)
    Theta_d1=input(1);
    Theta_d2=input(2);
    d3_d=input(3);
    Theta_d4=input(4);
    Theta2 = input(6);

    m_L1 = 25;
    m_L2 = 25;
    m_L3 = 10;
    m_L4 = 5;
    a1 = 0.5;
    a2 = 0.5;
    g_r1 = 1;
    g_r2 = 1;
    g_r3 = 50;
    g_r4 = 20;
    g = 9.8;
    Fmotor1 = 0.0001;
    Fmotor2 = 0.0001;
    Fmotor3 = 0.01;
    Fmotor4 = 0.005;

    N=[-Theta_d2*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), - Theta_d1*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)) - Theta_d2*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), 0, 0;
       Theta_d1*(a1*a2*m_L2*sin(Theta2) - (a1*m_L2*sin(Theta2))/4 + a1*a2*m_L3*sin(Theta2) + a1*a2*m_L4*sin(Theta2)), 0, 0, 0;
       0, 0, 0, 0; 
       0, 0, 0, 0];
 
    Gvty = [0; 0; -(m_L3+m_L4)*g; 0];
    ForceV = [g_r1^2*Fmotor1 0 0 0;0 g_r2^2*Fmotor2 0 0;0 0 g_r3^2*Fmotor3 0;0 0 0 g_r4^2*Fmotor4];
    output = N*[Theta_d1;Theta_d2;d3_d;Theta_d4]+ForceV*[Theta_d1;Theta_d2 ;d3_d;Theta_d4]+Gvty;
end

