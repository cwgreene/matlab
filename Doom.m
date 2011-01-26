%I think this was from helping that guy with his Control Theory Homework.
%The mistake was in F I believe, one of the coeficients was wrong.

clear all, close all
m1 = 10;
m2 = 350;
kw = 500000;
ks = 10000;
B = [1000 2000 3000 4000];
t = 0:0.01:2;
 
for i = 1:4
    b = B(i);
    F = [0 1 1 0;-(ks/m1 + kw/m1) -b/m1 b/m1 b/m1;0 0 0 1; ks/m2 b/m2 -ks/m2 -b/m2];
    G = [0; kw/m1; 0; 0];
    H = [1 0 0 0; 0 0 1 0];
    J = 0;
    y = step(F,G,H,J,1,t);
    subplot(2,2,i);
    plot(t,y(:,1),t,y(:,2));
    legend('Wheel','Car');
    ttl = sprintf('Response with b = %4.1f ',b);
    title(ttl);
end
