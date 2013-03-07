% keplerEq.m
% Numerical solutions to Kepler's equation.

clear; clc;
% %----- Graphical method
% EVec = [0:0.001:2*pi]';
% y1Vec = sin(EVec);
% y2Vec = (1/e)*(EVec - M);
% figure(1);clf;
% plot(EVec,[y1Vec,y2Vec]);
% ylim([-1.5 1.5]);
% grid on;
% xlabel('Eccentric anomaly E (rad)');
% ylabel('y');
% title(['Graphical Method for Solving Keplers Eq.: M = '...
%        num2str(M) ', e = ' num2str(e)]); 


%----- Successive iterations 1
n=0;
e=.1;
M=.1;
E0=0;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = M + e*sin(E0);
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from successive iterations: ');
disp(E_new(k-1));
disp('The number of iterations is from successive iterations : ');
disp(k-1);

clear;

% ----- Newton-Raphson method 1
E0=0;
E = E0;
e=.1;
M=.1;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = E0 - ((E0 - e*sin(E0) - M)/(1-e*cos(E0)));
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from Newton Raphson: ');
disp(E_new(k-1));
disp('The number of iterations from Newton Raphson : ');
disp(k-1);

%----- Successive iterations 2
n=0;
e=.7;
M=.1;
E0=0;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = M + e*sin(E0);
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from successive iterations: ');
disp(E_new(k-1));
disp('The number of iterations is from successive iterations : ');
disp(k-1);

clear;

% ----- Newton-Raphson method 2
E0=0;
E = E0;
e=.7;
M=.1;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = E0 - ((E0 - e*sin(E0) - M)/(1-e*cos(E0)));
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from Newton Raphson: ');
disp(E_new(k-1));
disp('The number of iterations from Newton Raphson : ');
disp(k-1);

%----- Successive iterations 3
n=0;
e=.7;
M=3;
E0=0;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = M + e*sin(E0);
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from successive iterations: ');
disp(E_new(k-1));
disp('The number of iterations is from successive iterations : ');
disp(k-1);

clear;

% ----- Newton-Raphson method 3
E0=0;
E = E0;
e=.7;
M=3;
k = 1;
while k < 3 || E_new(k - 2) ~= E_new(k - 1);
    E_new(k) = E0 - ((E0 - e*sin(E0) - M)/(1-e*cos(E0)));
    E0=E_new(k);
    n(k) = k;
    k = k + 1;
end
plot(n,E_new);
disp('E derived from Newton Raphson: ');
disp(E_new(k-1));
disp('The number of iterations from Newton Raphson : ');
disp(k-1);
