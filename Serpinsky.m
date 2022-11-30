clear
clc
 Serpinsky(8)
function Serpinsky(Lmax)

x1 = 0;     %Начальные точки
y1 = 0;

x2 = 1;
y2 = 0

x3 = 0.5 * x2
y3 = sin(pi/3)

figure
hold on

fill([x1 x2 x3],[y1 y2 y3],'b')

set(gca, 'Xtick',[], 'ytick',[])
set(gca, "Xcolor", 'w' , 'Ycolor', 'W')

Symplex(x1,y1, x2,y2, x3,y3, 0, Lmax)

end














