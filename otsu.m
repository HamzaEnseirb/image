function seuil=otsu(img)
    N=256;
    [h,w]=size(img);
    img=double(img);
    his=hist(img(:),N)/(h*w);
    crit=[];
    w=[];
    u=[];
    for k=1:N
        w=[w sum(his(1:k))/sum(his)];
        I=[];
        for i=1:k
            I=[I i];
        end
        u=[u sum(I.*his(1:k))/sum(his)];
    end
    for k=1:N
        crit =[crit w(k)*(u(N)-u(k))^2+(1-w(k))*u(k)^2 ];
    end
    [m,argm]=max(crit);
    
    seuil=argm;
    
end