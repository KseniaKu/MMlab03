//Модель боевых действий между регулярными войсками
model Fight1
 parameter Real x0=22022; //чиленность армии страны Х
 parameter Real y0=33033; //чиленность армии страны У

 parameter Real a=0.401; //степень влияния различных факторов на потери х
 parameter Real b=0.707; //эффективность боевых действий у
 parameter Real c=0.606; //эффективность боевых действий х
 parameter Real h=0.502; //степень влияния различных факторов на потери у
 
 Real x(start=x0);
 Real y(start=y0);

// sin(8t) & cos(6t) - возможность подхода подкрепления к войскам 
                      //стран Х и У соответсвенно
equation
  der(x) = -a*x-b*y+sin(8*time);
  der(y) = -c*x-h*y+cos(6*time);

end Fight1;
