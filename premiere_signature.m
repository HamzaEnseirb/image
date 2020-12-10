function [X,Y,signature] = premiere_signature(img,x,y)

    l = sqrt((x(1)-x(2))^2+(y(1)-y(2))^2);
    X = [];
    Y = [];
    U = floor(2*l)+1;
    for u=0:U-1
        X = [X round(x(1)+(u/(U-1))*(x(2)-x(1)))];
        Y = [Y round(y(1)+(u/(U-1))*(y(2)-y(1)))];
    end
    signature = [];
    for i=1:length(X)
        signature=[signature img(Y(i),X(i))];
    
    end
    
    
end

