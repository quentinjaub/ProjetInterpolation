function [ newVertices ] = ComputeNonFrontierOdd( newVertices,coordinate,elements3,indexTriangles,j,j_1,X,Y,Z )
     % Il existe une face adjacente
     % Calcul des coordonnées des deux triangles adjacents
     coordinateTriangles = coordinate(elements3(indexTriangles,:),:);
     coordinateTriangles=unique_stable(coordinateTriangles);
     vodd=(3/8) * ([X(j),Y(j),Z(j)] + [X(j_1),Y(j_1),Z(j_1)]);
     % Calcul de l'odd vertice
     for jc = 1:size(coordinateTriangles,1)
         if ((~isequal(coordinateTriangles(jc,:),[X(j),Y(j),Z(j)]))&&(~isequal(coordinateTriangles(jc,:),[X(j_1),Y(j_1),Z(j_1)])))
             vodd = vodd+(1/8)*coordinateTriangles(jc,:);
         end
     end
     newVertices(j,:) = vodd;
end
