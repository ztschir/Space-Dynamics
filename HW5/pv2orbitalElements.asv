function [aOrb,eOrb,iOrb,omegaOrb,OmegaOrb,tauOrb,fOrb] ...
    = pv2orbitalElements(R,Rdot,t,mu);


r = sqrt(sum(R.^2));
rdot = sqrt(sum(R.^2));
hVec = cross(R,Rdot);
h = sqrt(sum(hVec.^2));

A = [0 Rdot(3) -Rdot(2);
     -Rdot(3) 0 Rdot(1);
     Rdot(2) -Rdot(1) 0;];
 
K = A\hVec';

E = (rdot^2)/2 - mu/r;

aOrb = -mu/2*E;

n = sqrt(mu/aOrb^3);

eOrb = sqrt(1 - (h^2)/mu*aOrb);

iOrb = acos(hVec(3)/h);

OmegaOrb = asin(hVec(1)/h*sin(iOrb));

fOrb = asin(h*r/eOrb*mu);

Ecc = acos((1/eOrb) - (r/eOrb*aOrb));

tauOrb = t - (Ecc/n - eOrb*sin(Ecc)/n);

Z = h*cos(iOrb);

theta = asin(Z/r*sin(iOrb));

omegaOrb = theta - fOrb;