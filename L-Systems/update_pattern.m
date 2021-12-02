function [new_pattern] = update_pattern(pattern, p)
%UPDATE_PATTERN updates the pattern using all production rules
%   input is p, which contains symbols to replace and rule as strings
    
    sz=size(p);
    nb_rules=sz(1);
    
    for j=1:nb_rules
         % for each row of p, i.e for each rule
        symbol_to_replace=p{j,1};
        replacement=p{j,2};
        
        new_pattern=strrep(pattern, symbol_to_replace, replacement);
        % replace the pattern using production rule
        
        pattern=new_pattern;
    end
    
end

