function matrix = AddSizeColorColumn(M, color)
   
    matrix = M;
    
    if size(matrix,2) > 3
        %matrix(:,4) = [];
        matrix = matrix(:,1:3);
    end
    
    matrix(:,4) = 40;
    matrix = wextend('addcol','zpd', matrix, 3,'r');

    if (strcmp(color, 'red'))
        matrix(:,5) = 1;
    elseif (strcmp(color, 'green'))
        matrix(:,6) = 1;
    elseif (strcmp(color, 'blue'))
        matrix(:,7) = 1;
    end
    
end