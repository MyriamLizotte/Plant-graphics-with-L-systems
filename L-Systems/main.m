clc
% input: 
% n             | number of iterations
% deg           | angle
% seed          | seed (initial step)
% p             | production rules as a string of symbols
%                   p is an array of strings
%                   each row is a rule 
%                   in first position: symbol to replace 
%                   in second position what to replace it with

seed="F";
symbol_to_replace="F";


% % PLANT 1: very simplistic tree
% n= 5;
% deg=35;
% replacement="F[+F][F][-F]";
% p={symbol_to_replace, replacement};

% PLANT 2: algae-like
% n= 5;
% deg=25;
% replacement="F[+F]F[-F]F";
% p={symbol_to_replace, replacement};


% % PLANT 3: bush
% n= 5;
% deg=30;
% replacement="F[+F][-F[-F]F]F[+F][-F]";
% p={symbol_to_replace, replacement};


% % PLANT 4: christmas tree
% n= 4;
% deg=40;
% replacement="F[+FF][-FF]F[+FF][-FF]FF";
% p={symbol_to_replace, replacement};


% %PLANT 5: flowerhead
% n= 9;
% deg=25.7;
% seed="X";
% symbol_to_replace="X"; 
% % for node rewriting, X represents the end of a branch
% replacement="F[+X][-X]FX";
% p={symbol_to_replace, replacement};
% 
% symbol_to_replace="F"; 
% replacement="FF";
% p=[p;{symbol_to_replace, replacement}];


% ----STARTING TO PROCESS ------------------
stack=Stack();% create an empty stack to hold turtle handles


pattern= seed; %initialize the pattern to be the seed
figure
turtle=Turtle(); % create a turtle
draw_pattern(turtle, pattern, deg, stack) % draw the seed

for i=2:n
% for each iteration

    new_pattern=update_pattern(pattern,p);
    
    clf % clear current figure
    draw_pattern(turtle,new_pattern,deg,stack);
    pattern=new_pattern;
    
end



