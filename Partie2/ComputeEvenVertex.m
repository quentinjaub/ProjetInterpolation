function [veven,MajEvenFrontierIndex] = ComputeEvenVertex(coordinate,elements3,k,frontierIndex)

 coorPj=coordinate(k,:);
 MajEvenFrontierIndex=[];

 IsFrontier=any(frontierIndex==k);

 if (~IsFrontier)
     %Point Interieur
    [ veven ] = ComputeInteriorEven( elements3,k,coordinate,coorPj );
 else
     %Point sur la frontiere
     [indexrows,~] = find(elements3==k);  %-> indices des triangles contenant (xj,yj,zj)
     % On a les indices des triangles contenant Pj
     % On cherche les elements sur le bord 
     %Indp = indice du point P
     [indP1,indP2] = ComputeFrontierPoints(indexrows,elements3,k);
     if(indP1~=0 && indP2~=0)
      
         veven = (3/4)*[coorPj(1),coorPj(2),coorPj(3)] + (1/8)*(coordinate(indP1,:) + coordinate(indP2,:));
         MajEvenFrontierIndex = k;
     end
 end


end

