% Title: DH
% Author: Bing XIong
% Date: 2018.01.23
% Description: This function is used to calculate DH
% The input example  # theta d a alpha
% d = [ 
%     90 0 0 90;
%     90 0 0 0;
%     0 0 0 90;
%     ];
%     g = degree*pi/180;

function [dh]  = dh(input)
[m,~] = size(input);
temp=[];
for i = 1:m

    % Initializa input
theta = input(i,1)*pi/180;
d = input(i,2);
a = input(i,3);
alpha = input(i,4)*pi/180;

%caculate matrix
A = [
    cos(theta) -sin(theta)*cos(alpha) sin(theta)*cos(alpha) a*cos(theta);
    sin(theta) cos(theta)*cos(alpha)  -cos(theta)*sin(alpha) a*sin(theta);
    0          sin(alpha)             cos(alpha)             d           ;
    0          0                      0                      1
];
temp=[temp,A];
end

[~,temp_col] = size(temp);
dh =diag([1,1,1,1]);

for i=1:temp_col/4
dh = dh*temp(:,1+4*(i-1):4*i);
end