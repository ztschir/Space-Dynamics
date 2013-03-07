function [Rf, Vf] = propOrbitTwoBody(Ri,Vi,ti,tf,mu)

ri = sqrt(sum(Ri.^2));
vi = sqrt(sum(Vi.^2));
Hi = cross(Ri,Vi);
hi = sqrt(sum(Hi.^2));
En = (vi^2)/2 - (mu/ri);

a = -mu/(2*En);

n = sqrt(mu/(a^3));

i = acosd(Hi(3)/hi)
e = sqrt(1 - (hi^2)/(mu*a));

Ec = acosd((1/e) - (ri/(e*a)));
Z = hi*cosd(i);
theta = asind(Z/(ri*sind(i)));

Omega = asind(Hi(1)/(hi*sind(i)));

f = asind((hi*ri)/(e*mu));

tau = ti - ((Ec/n) - (e*sind(Ec))/n);

omega = theta - f;

Mtf = (tf - tau)*n;

Etf(1) = Mtf;
ep = 10e-16;
k = 1;
while k == 1 || abs(Etf(k)-Etf(k-1))< ep
    Etf(k+1) = Etf(k) - (Etf(k)-e*sind(Etf(k))-Mtf)/(1-e*cosd(Etf));
    k = k + 1;
end
Etfe = Etf(end);
rtf = a*(1-e*cosd(Etfe));

b = a*sqrt(1-(e^2));
ftf = asin((b/ri)*sin(Etfe));

P = [cosd(omega)*cosd(Omega) - sind(omega)*cosd(i)*sind(Omega); 
    cosd(omega)*sind(Omega) + sind(omega)*cosd(i)*cosd(Omega);
    sind(omega)*sind(i);];
Q = [-sind(omega)*cosd(Omega) - cosd(omega)*cosd(i)*sind(Omega);
    -sind(omega)*sind(Omega) + cosd(omega)*cosd(i)*cosd(Omega);
    sind(i)*cosd(omega);];

EtfeDot = sqrt(mu/(a^3))/(1-e*cos(Etfe));
Rf = (a*(cosd(Etfe)-e)).*P + (a*sqrt(1-(e^2))*sind(Etfe)).*Q;
Vf = (-a*(sind(Etfe)*EtfeDot)).*P + (a*sqrt(1-(e^2))*cosd(Etfe)*EtfeDot).*Q;