% ???????????
% ?????
% ???2018.1.20
% ?????????
function [m]  = rot(axis,degree)
g = degree*pi/180;
 switch axis
   case 'x'
      m =[1 0 0 0;
          0 cos(g) -sin(g) 0;
          0 sin(g) cos(g) 0;
          0 0 0 1];
   case 'y'
      m =[cos(g) 0 sin(g) 0;
          0 1 0 0;
          -sin(g) 0 cos(g) 0;
          0 0 0 1];
   case 'z'
      m =[cos(g) -sin(g) 0 0;
          sin(g) cos(g) 0 0;
          0 0 1 0;
          0 0 0 1];   
 end
end