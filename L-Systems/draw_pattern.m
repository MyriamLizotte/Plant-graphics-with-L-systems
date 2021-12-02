function draw_pattern(turtle,pattern,deg,stack,length)

% DRAW_PATTERN reads a string of symbols and draws the pattern
% input is a string
    pattern
    
    % turn the sing into a cell arraw separated character by character
    pattern_sep=regexp(pattern,'.','match');

    
    
    for char=pattern_sep % for each character in pattern
       switch(char)
           
           case 'F'
               fprintf("draw forward\n")
               turtle.draw_forward(1)
               
               
           case '-'
               fprintf("rotate right\n")
               turtle.rotate(deg)
               
               
           case'+'
               fprintf("rotate left\n")
               turtle.rotate(-deg)
               
               
           case '['
               fprintf("push\n")
               %stack_turtle_before_1=stack.turtles(1)
               %stack_turtle_before_2=stack.turtles(2)
               
               stack.push(turtle);

               %stack_turtle_after_1=stack.turtles(1)
               %stack_turtle_after_2=stack.turtles(2)
               
               
           case ']'
               fprintf("pop\n")
               %current_turtle=turtle
               
               turtle=stack.pop();
               % change the value of turtle, because stack.pop
               % returns a turtle object
               
           otherwise
               fprintf("idk what this is\n")
    end

end

