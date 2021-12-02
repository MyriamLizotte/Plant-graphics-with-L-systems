classdef Turtle < handle
    % TURTLE creates a turtle object to make graphics
 
    properties
        x
        y
        % x, y coordinates of the turtle
        
        dir
        % direction of the turtle as an angle in degrees
        
        
    end
    
    methods
        function obj = Turtle()
            % TURTLE Construct an instance of this class
            %   default turtle starts at 0,0 and points up
            obj.x = 0;
            obj.y=0;
            obj.dir=90;
        end
        
        function draw_forward(obj,length)
            % draws a straight line forward
            % updates the position of turtle object          
            
            x_1= obj.x;
            y_1= obj.y;
            
            x_2= x_1+cosd(obj.dir)*length;
            y_2= y_1 + sind(obj.dir)*length;
            
            line([x_1, x_2],[y_1,y_2])
            
            obj.x=x_2;
            obj.y=y_2;
            
            
        end
        
       function move_forward(obj,length)
            % moves forward WITHOUT drawing a line
            % only updates the position of turtle object          
           
            x_1= obj.x;
            y_1= obj.y;
            
            x_2= x_1+cosd(obj.dir)*length;
            y_2= y_1 + sind(obj.dir)*length;
 
            obj.x=x_2;
            obj.y=y_2;

        end
        
        
       function rotate(obj,deg)
            % rotates the angle (counterclockwise for positive values)
            % updates the direction of turtle object          
            
            new_dir=obj.dir+deg;
            
            if (new_dir >= 360) 
                new_dir = new_dir-360;
            end
            
            obj.dir=new_dir;

       end
       
       function copy(obj,turtle)
           % copies values of the second turtle into the first
           obj.x=turtle.x;
           obj.y=turtle.y;
           obj.dir=turtle.dir;
       end

    end
end

