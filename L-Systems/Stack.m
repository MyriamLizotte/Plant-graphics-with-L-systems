classdef Stack < handle
    % STACK stack of turtle objects handles
    %   methods: push pop
    
    properties
        turtles
        % array to hold the turtle handles
        
        index
        % holds current position
      
    end
    
    methods
        function obj = Stack()
            %STACK Construct an instance of this class
            obj.turtles=[];
            
            for i=1:3 % create a 3x1 array of turtle
                t=Turtle();
                obj.turtles=[obj.turtles; t];  
            end
            
            obj.index=0; % initialize index
        end
        
        
        
        
        
        
        function push(obj, turtle)
            % PUSH push input turtle to the top of the stack
            % adds space in stack if necessary


            sz= size(obj.turtles);
            if (obj.index+1 > sz(1))
            % if no more space in stack
            % add 10 more slots in the stack
                for i=1:10
                  t=Turtle;
                  obj.turtles=[obj.turtles; t];
                end
            end
            
            new_turtle=obj.turtles(obj.index+1);
            new_turtle.copy(turtle) % copy properties of current turtle into new_turtle, i.e. to the next slot
            obj.index=obj.index+1;
           
        end
        
        
        
        
        
        
        function return_turtle=pop(obj)
            % POP returns the last value pushed in the stack
            % and updates index
            return_turtle=Turtle();
            return_turtle.copy(obj.turtles(obj.index));
            
            obj.index=obj.index-1;
            new_index=obj.index;
        end
        
        
        
        
        
        
        
        
        
        
        
        function print_stack(obj)
            %print each turtle
            fprintf("index: %d\n", obj.index)
            
            sz=size(obj.turtles);
            for i=1:1%sz(1)
                fprintf("turtles[%d]:  ", i)
                obj.turtles(i)
            end
        end
    end
end

