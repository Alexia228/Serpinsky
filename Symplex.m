function Symplex (x1,y1, x2,y2, x3,y3, n,Lmax) %Рекурсиваная. Вызывает саму себя Lmax раз

if n < Lmax            %Условия продолжения рекурсии
    dx = (x2 - x1)/2;  %Координаты вершин треугольника, закрашиваемого белым
    dy = (y3 - y1)/2;
    
    x1n = x1 + dx;
    y1n = y1;
    
    x2n = x1 + dx/2 + dx;
    y2n = y1 + dy;
    
    x3n = dx/2 + x1;
    y3n = y1 + dy;
    
    n = n + 1;
    
    fill([x1n x2n x3n],[y1n y2n y3n],'w')
     pause(0.01)
    Symplex(x1,y1,x1n,y1n,x3n,y3n,n,Lmax) %Левый нижний треугольник
    Symplex(x1n,y1n,x2,y2,x2n,y2n,n,Lmax) %Правый нижний треугольник
    Symplex(x3n,y3n,x2n,y2n,x3,y3,n,Lmax) %Верхиний треугольник
end
end

    
    
    

    
    
    