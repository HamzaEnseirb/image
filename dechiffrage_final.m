function [a,b]=dechiffrage_final(N_G,gauche,N_M,droite,N_D,u)
    a=zeros(1,12);
    b=zeros(1,12);
    for i=1:6
        [a(i),b(i)]=dechiffrage(gauche((i-1)*7*u+1:7*i*u),u); 
    end
        for i=1:6
        [a(i+6),b(i+6)]=dechiffrage(droite((i-1)*7*u+1:7*i*u),u); 
        end
    
end