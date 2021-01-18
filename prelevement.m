function [N_G,gauche,N_M,droite,N_D,u] = prelevement(sign)
    u=floor(length(sign)/95);
    N_G=sign(1 : u*3);
    gauche = sign(u*3 +1: u*45);
    N_M=sign(u*45+1:50*u);
    droite= sign(50*u+1:92*u);
    N_D = sign(92*u+1 : 95*u);
end