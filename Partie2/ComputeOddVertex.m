function [newVertices,newIndexFrontierPoint] = ComputeOddVertex(coordinate,elements3,k)
    newVertices = zeros(3,3);
    newIndexFrontierPoint=zeros(3,1);
 %%% Calcul des odd vertices
    % On parcourt actuellement le triangle k
    % Calcul des abscisses et ordonnées des points du triangle.
     X=coordinate(elements3(k,:),1); %elements3(k,:) : Coordonnées des 3 sommets du triangle k
     Y=coordinate(elements3(k,:),2);
     Z=coordinate(elements3(k,:),3);

     % Calcul des odd vertices
     for j = 1:3 % indice j modulo 3
         if (j==3)
             j_1=1;
         else
             j_1=j+1;
         end
         %On considere l'arête (xj,yj,zj)-(xj+1,yj+1,zj+1)-> Trouver les faces adjacentes 
         [indexTriangles ] = FaceAdjacente( k,j,j_1,elements3);
         if (indexTriangles(1)==0 || indexTriangles(2)==0)
             %%% Pas de face adjacente !!
             % Calcul des frontiervertices car il n'y a pas de
             % deuxieme triangle
             newVertices(j,:) = 0.5 * ([X(j),Y(j),Z(j)] + [X(j_1),Y(j_1),Z(j_1)]);
             newIndexFrontierPoint(j) = (k-1)*3+j;
         else
            [ newVertices ] = ComputeNonFrontierOdd( newVertices,coordinate,elements3,indexTriangles,j,j_1,X,Y,Z );
         end
    end

end

