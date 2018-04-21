function [oddVertices, MajIndexFrontierOdd ] = ComputeAllOdd( frontierIndex, coordinate , elements3)

        
% On parcourt chaque triangle
% A chaque triangle, on cree 3 nouveaux points sur les arêtes de ce
% dernier

% Nombre de triangles ( Penser a la maj de nt à chaque iteration )
nt = size(elements3,1);
oddVertices = zeros(nt*3,3);

for k = 1:nt
    % Calcul des odd vertices pour le triangle k
   [newVerticesTriangleK,newIndexFrontierPoint] = ComputeOddVertex(coordinate,elements3,k);
   oddVertices((k-1)*3+1:k*3,:) = newVerticesTriangleK; % newVerticesTriangleK contient des doublons
    if (k==1)
        MajIndexFrontierOdd=newIndexFrontierPoint;
    else
        MajIndexFrontierOdd = [MajIndexFrontierOdd ;newIndexFrontierPoint];
    end
end    
MajIndexFrontierOdd = MajIndexFrontierOdd(find(MajIndexFrontierOdd~=0)) ; 

end

