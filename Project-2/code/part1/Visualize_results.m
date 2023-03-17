%plot tracking

figure(1)
subplot(4,1,1); plot(t, pd(:,1)-Pos_O(:,1));
subplot(4,1,2); plot(t, pd(:,2)-Pos_O(:,2));
subplot(4,1,3); plot(t, pd(:,3)-Pos_O(:,3));
subplot(4,1,4); plot(t, theta_d(:,1)-Pos_O(:,1));


figure(2)
subplot(4,1,1); plot(t, Angles(:,1));
subplot(4,1,3); plot(t, Angles(:,3));
subplot(4,1,4); plot(t, Angles(:,4));
subplot(4,1,2); plot(t, Angles(:,2));