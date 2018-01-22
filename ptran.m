% ???????????
% ?????
% ???2018.1.20
% ????????????

function []  = ptran(m)

point = [m(1,4),m(2,4),m(3,4)];
plot3(m(1,4),m(2,4),m(3,4));

line([point(1,1),point(1,1)+m(1,1)],[point(1,2),point(1,2)+m(2,1)],[point(1,3),point(1,3)+m(3,1)],'color','r','linewidth',3);
line([point(1,1),point(1,1)+m(1,2)],[point(1,2),point(1,2)+m(2,2)],[point(1,3),point(1,3)+m(3,2)],'color','g','linewidth',3);
line([point(1,1),point(1,1)+m(1,3)],[point(1,2),point(1,2)+m(2,3)],[point(1,3),point(1,3)+m(3,3)],'color','b','linewidth',3);

hold on
quiver3(0,0,0,1,0,0,5,'r');
quiver3(0,0,0,0,1,0,5,'g');
quiver3(0,0,0,0,0,1,5,'b');

grid on
view(-5,5)
legend('point','x','y','z')
xlabel( 'x-r');
ylabel( 'y-g');
zlabel( 'z-b');
hold on
axis equal
fprintf('Input is:\n');
disp(m);
end