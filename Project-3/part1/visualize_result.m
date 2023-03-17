[Q] = Path_function();

T=Q(10,:);

figure(1); 
plot3(Q(1,:),Q(2,:),Q(3,:));
title("Trajectory");

figure(2); 
subplot(3,1,1); plot(T,Q(7,:)); title("Position along X");
subplot(3,1,2); plot(T, Q(8,:));title("Position along Y");
subplot(3,1,3); plot(T, Q(9,:));title("Position along Z");


figure(3); 
subplot(3,1,1); plot(T, Q(4,:)); title("Velocity along X");
subplot(3,1,2); plot(T, Q(5,:)); title("Velocity along Y");
subplot(3,1,3); plot(T, Q(6,:)); title("Velocity along Z");


figure(4);
subplot(3,1,1); plot(T, Q(1,:)); title("Accelaration along X");
subplot(3,1,2); plot(T, Q(2,:)); title("Accelaration along Y");
subplot(3,1,3); plot(T, Q(3,:)); title("Accelaration along Z");