figure(1)
subplot(3,1,1); plot(t, pd(:,1)-Position(:,1));title('Error in X');
subplot(3,1,2); plot(t, pd(:,2)-Position(:,2));title('Error in y');
subplot(3,1,3); plot(t, pd(:,3)-Position(:,3));title('Error in z');


figure(2)
subplot(4,1,1); plot(t, Joints(:,1));title('JOINT 1 (Revolute)');
subplot(4,1,2); plot(t, Joints(:,2));title('JOINT 2 (Revolute)');
subplot(4,1,3); plot(t, Joints(:,3));title('JOINT 3 (Prismatic)');
subplot(4,1,4); plot(t, Joints(:,4));title('JOINT 4 (Revolute)');