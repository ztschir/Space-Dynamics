function [R] = eulerAnglesToRotationMatrix313(phi,theta,psi)

R = [cos(theta)*cos(phi) sin(psi)*sin(theta)*cos(phi)-cos(psi)*sin(phi)...
    cos(psi)*sin(theta)*cos(phi)+sin(psi)*sin(phi);
    cos(theta)*sin(phi) sin(psi)*sin(theta)*sin(phi)+cos(psi)*cos(phi) ...
    cos(psi)*sin(theta)*sin(phi)-sin(psi)*cos(phi);
    -sin(theta) sin(psi)*cos(theta) cos(psi)*cos(theta)];