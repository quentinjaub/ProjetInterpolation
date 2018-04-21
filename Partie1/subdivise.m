function [X,Y,Z] = subdivise( n, nb_it, Xv, Yv, Zv )

% Subdivision d'une courbe Spline en 3D
X=Xv;
Y=Yv;
Z=Zv;
for i = 1:nb_it
        l=length(X);
        for i = 1:l
            Xd(2*i-1)=X(i);
            Xd(2*i)=X(i);
            Yd(2*i-1)=Y(i);
            Yd(2*i)=Y(i);
            Zd(2*i-1)=Z(i);
            Zd(2*i)=Z(i);
        end
        % On decale le vecteur Xeff d'un cran
        for j = 1:n
            xd_1=Xd(1);
            yd_1=Yd(1);
            Zd_1=Zd(1);
             for k=1:length(Xd)-1
                 Xd(k)=0.5*Xd(k)+0.5*Xd(k+1);
                 Yd(k)=0.5*Yd(k)+0.5*Yd(k+1);
                 Zd(k)=0.5*Zd(k)+0.5*Zd(k+1);
             % Milieu calculé
             end
             Xd(k+1)=0.5*Xd(k+1)+0.5*xd_1;
             Yd(k+1)=0.5*Yd(k+1)+0.5*yd_1;
             Zd(k+1)=0.5*Zd(k+1)+0.5*Zd_1;
        end
        X=Xd;
        Y=Yd;
        Z=Zd;
        
end

