function y=premier_chiffre(b)
    seq=[0 0 0 0 0 0; 0 0 1 0 1 1 ;0 0 1 1 0 1; 0 0 1 1 1 0 ;0 1 0 0 1 1; 0 1 1 0 0 1; 0 1 1 1 0 0; 0 1 0 1 0 1 ;0 1 1 0 0 1; 0 1 1 0 1 0];
    
    for i= 1:9
        if (b==seq(i))
            y=i;
        end
    end
    
end