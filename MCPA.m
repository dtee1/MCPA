close all 
clc
clear all
global C

addpath ../geom2d/geom2d

C.q_0 = 1.60217653e-19;             % electron charge
C.hb = 1.054571596e-34;             % Dirac constant
C.h = C.hb * 2 * pi;                    % Planck constant
C.m_0 = 9.10938215e-31;             % electron mass
C.kb = 1.3806504e-23;               % Boltzmann constant
C.eps_0 = 8.854187817e-12;          % vacuum permittivity
C.mu_0 = 1.2566370614e-6;           % vacuum permeability
C.c = 299792458;                    % speed of light
C.g = 9.80665; %metres (32.1740 ft) per s²


electronXpos = 0;
electronXpos1 = 10;
electronXpos2 = 100;
Velcity = 0;
Velocity1 = 2;
Velocity2 = 5;


    for c=1:1000

   
        xlim([0 1000])
        ylim([0 10e5])
        plot(c, electronXpos, 'o');
        grid on
        hold on
        pause(0.01)
       
        deltaVx = C.g;
        prob = rand();
        if (prob <= 0.05)
            Velcity =0;
            deltaXpos = 0;
        else
            Velcity = Velcity + deltaVx;
            deltaXpos = Velcity;
        end
        electronXpos = electronXpos + deltaXpos;
        plot(c, electronXpos1, 'o')
        deltaVx2 = 2*C.g;
        prob = rand();
        if (prob <= 0.2)
            Velocity1 =0;
            ddeltaXpos1 = 0;
        else
            Velocity1 = Velocity1 + deltaVx2;
            ddeltaXpos1 = Velocity1;
        end
        electronXpos1 = electronXpos1 + ddeltaXpos1;
        plot(c, electronXpos2, 'o')
        deltaVx3 = 3*C.g;
        prob = rand();
        if (prob <= 0.3)
            Velocity2 =0;
            ddeltaXpos2 = 0;
        else
            Velocity2 = Velocity2 + deltaVx3;
            ddeltaXpos2 = Velocity2;
        end
        electronXpos2 = electronXpos2 + ddeltaXpos2;
        str = sprintf('Drift Velocity:%d and %d', Velcity, Velocity1);
        title(str)
    end