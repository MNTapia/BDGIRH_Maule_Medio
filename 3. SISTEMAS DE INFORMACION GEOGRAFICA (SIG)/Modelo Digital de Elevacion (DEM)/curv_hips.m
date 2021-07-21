%% Carga de archivos DEM
clear;clc;
NDVI = csvread('hips_MM.csv');

%% Creación vectores auxiliares en orden descendentes
MM = sort(NDVI,'descend');
%% auxiliar plot
for i = 1:length(MM)
    x(i) = (i/length(MM))*100;
end

%% Plot curvas hipsometricas
figure(1)
p = plot(x,MM,'linewidth',2); hold on;
title('Curva Hipsometrica Subcuenca Maule Medio')
legend('Subcuenca Maule Medio')
ylabel('Altitud (m.s.n.m.)')
xlabel('Porcentaje de superficie acumulada')
saveas(p,'curv_hips.jpg')

%% Clasificación segun altitud
% Definicion e identificación de Rangos
% Definicion de varibles
aux = 4000/100;
R = zeros(1,aux);

% MAULE MEDIO (MM)
for o = 1:length(MM)
    if (-1.0 < MM(o)) && (MM(o) <= 0)
        R(1) = R(1) + 1;
    end
    if (100 < MM(o)) && (MM(o) <= 200)
        R(2) = R(2) + 1;
    end
    if (200 < MM(o)) && (MM(o) <= 300)
        R(3) = R(3) + 1;
    end
    if (300 < MM(o)) && (MM(o) <= 400)
        R(4) = R(4) + 1;
    end
    if (400 < MM(o)) && (MM(o) <= 500)
        R(5) = R(5) + 1;
    end
       
end

%% Porcentaje de area segun rangos de altitud

for u = 1 :length(R)
    PR(u) = 100*R(u)/(length(MM));
end
csvwrite('PR.csv',PR')