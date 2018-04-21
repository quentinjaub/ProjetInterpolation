function [ veven ] = ComputeInteriorEven( elements3,k,coordinate,coorPj )

 [indexrows,~] = find(elements3==k);  %-> indices des triangles contenant (xj,yj,zj)
 % On a les indices des triangles contenant Pj
 % -> Calcul des coordonnées des sommets inclus dans les triangles
 % contenant Pj
 [TrianglesCoorUse] = coordinate(elements3(indexrows,:),:);
 TrianglesCoorUse=unique_stable(TrianglesCoorUse);

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Calcul de l'even Point
 n=size(TrianglesCoorUse,1)-1;
 beta = (1/n)*((5/8)-((3/8)+0.25*cos(2*pi/n))^2);
 Pj=[coorPj(1),coorPj(2),coorPj(3)];
 veven=Pj;
 veven=veven*(1-n*beta);
 for jeven=1:size(TrianglesCoorUse,1)
     if(~isequal(TrianglesCoorUse(jeven,:),Pj))
         veven = veven + TrianglesCoorUse(jeven,:)*beta;
     end
 end

end

