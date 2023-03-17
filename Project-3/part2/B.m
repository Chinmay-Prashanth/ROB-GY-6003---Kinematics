function output=B(input)

Theta1=input(1);
Theta2=input(2);
    d3=input(3);
Theta4=input(4);

    y1=input(5);
    y2=input(6);
    y3=input(7);    
    y4=input(8);

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

    g_r1 = 1;
    g_r2 = 1;
    g_r3 = 50;
    g_r4 = 20;

    g = 9.8;
    
    b11=a1^2*m_L1+(0.25+a2^2+a2*cos(Theta2))*m_L2+(0.5+0.5*cos(Theta2))*(m_L3+m_L4)+I_L1+I_L2+I_L4+Im1*g_r1^2+Im2+Im3+Im4;
    b12=(0.5*a2*cos(Theta2)+a2^2)*m_L2+(0.25+0.25*cos(Theta2))*(m_L3+m_L4)+I_L2+I_L4+Im2*g_r2++Im3+Im4;
    b13=-g_r3*Im3;
    b14=g_r4*Im4+I_L4;
    b21=b12;
    b22=a2^2*m_L2+0.25*(m_L4+m_L3)+I_L2+I_L4+Im2*g_r2^2+Im4+Im3;
    b23=-g_r3*Im3;
    b24=g_r4*Im4+I_L4;
    b31=b13;
    b32=b23;
    b33=Im3*g_r3^2+m_L3+m_L4;
    b34=0;
    b41=b14;
    b42=b24;
    b43=b34;
    b44=Im4*g_r4^2+I_L4;

    B=[b11 b12 b13 b14; 
       b21 b22 b23 b24; 
       b31 b32 b33 b34; 
       b41 b42 b43 b44];

    output=B*[y1 y2 y3 y4]';
end    