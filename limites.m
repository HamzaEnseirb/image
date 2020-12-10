function [start, endis] = limites(signature)
    start = -1;
    endis = -1;
    for i=1:length(signature)
        if signature(i) == 0
            if start == -1
                start = i;
            end
        end
        
        if signature(length(signature)-i+1) == 0
            if endis == -1
                endis = length(signature)-i+1;
            end
        end
    end
end