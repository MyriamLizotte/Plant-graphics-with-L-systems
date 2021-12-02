clc
figure

nb_iterations= 10^8;

probs=[0.01, 0.85, 0.07, 0.07];
% holds the probability of each transformation


% for each i the transformation i is x'= A_i x + b_i
% where b_i is a 2D vector and A_i is a 2x2 matrix

A_1= [0 0 ; 0 0.16];
b_1 = [ 0; 0];

A_2= [0.85 0.04 ; -0.04 0.85];
b_2= [0 ; 1.6];

A_3=[0.2 -0.26; 0.23 0.22];
b_3= [0; 1.6];

A_4=[-0.15 0.28; 0.26 0.24];
b_4=[0; 0.44];

% for each starting point x, y
% for x=axis
%     for y=axis



xs=zeros(nb_iterations, 1);
% row vector which holds the x-values of all computed points
ys=zeros(nb_iterations, 1);
% row vector which holds the y-values of all computed points

xs(1)=0;
% holds the x-value of the current point
y1(1)=0;
% holds the y-value of the current point

old_vector=zeros(2,1);
new_vector=zeros(2,1);

for i= 2:nb_iterations
    prob=rand;
    old_vector=[xs(i-1);ys(i-1)];
    
    if prob < probs(1)
        new_vector= A_1*old_vector+b_1;

    elseif prob < probs(1) + probs(2)
        new_vector= A_2*old_vector+b_2;
        
    elseif prob < probs(1) + probs(2)+ probs(3)
         new_vector= A_3*old_vector+b_3;
         
    else
         new_vector= A_4*old_vector+b_4;
    end
    
    xs(i)= new_vector(1);
    ys(i)= new_vector(2);
end 




plot(xs,ys, '.', 'MarkerSize',1)
%saveas(gcf, 'Barnsley_fern_8');