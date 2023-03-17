function [b] = traj_function(sf,si,tf,ti)
T=0:0.001:4;
A=(5*abs(sf-si))/((tf+ti)^2-4*ti*tf);
Tc=(tf+ti)/2-(1/2)*sqrt((((tf+ti)^2)*A-4*(sf-si+A*ti*tf))/A);
for i=1:length(T)
    if (T(i)<ti)
        s(i)=0;
        s_d(i)=0;
        s_d_d(i)=0;
     elseif (ti<=T(i) && T(i)<=Tc)
        s(i)=si+(1/2)*A*((T(i)-ti)^2);
        s_d(i)=A*(T(i)-ti);
        s_d_d(i)=A; 
     elseif (T(i)>Tc && T(i)<=(tf-Tc+ti))
        s(i)=si+A*(Tc-ti)*(T(i)-ti-(Tc-ti)/2);
        s_d(i)=A*(Tc-ti);
        s_d_d(i)=0;
     elseif (T(i)>(tf-Tc) && T(i)<=tf)
        s(i)=sf-(1/2)*A*((tf-T(i))^2);
        s_d(i)=A*(tf-T(i));
        s_d_d(i)=-A;        
    else
        (T(i)>tf);
        s(i)=sf;
        s_d(i)=0;
        s_d_d(i)=0;
    end
    a(1,i)=s(i);
    a(2,i)=s_d(i);
    a(3,i)=s_d_d(i);
    b=a;
     
end

   
       