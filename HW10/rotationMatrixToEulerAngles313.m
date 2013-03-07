function [phi,theta,psi] = rotationMatrixToEulerAngles313(R)

if (abs(R(3,1)) ~= 1)
    theta1 = -asin(R(3,1));
    theta2 = pi - theta1;
    psi1 = atan2(R(3,2)/cos(theta1),R(3,3)/cos(theta1));
    psi2 = atan2(R(3,2)/cos(theta2),R(3,3)/cos(theta2));
    phi1 = atan2(R(2,1)/cos(theta1),R(1,1)/cos(theta1));
    phi2 = atan2(R(2,1)/cos(theta2),R(1,1)/cos(theta2));
    
    theta = [theta1,theta2];
    psi = [psi1,psi2];
    phi = [phi1,phi2];
else
    phi = 0;
    if(R(3,1) == -1)
        theta = pi/2;
        psi = phi + atan2(R(1,2),R(1,3));
    else
        theta = -pi/2;
        psi = -phi + atan2(-R(1,2),-R(1,3));
    end
end