function [EvenVertices ,MajIndexFrontierEven ] = ComputeAllEven( coordinate, elements3,frontierIndex )
MajIndexFrontierEven=[];
EvenVertices = zeros(size(coordinate,1),3);
for k = 1:size(coordinate,1)
    %%% Calcul des even vertices
    % On parcourt chaque sommet (xj,yj,zj)
    [veven,MajEvenFrontierIndex] = ComputeEvenVertex(coordinate,elements3,k,frontierIndex);
    EvenVertices(k,:) = veven;
    if (MajEvenFrontierIndex ~=0)
        MajIndexFrontierEven(k)=MajEvenFrontierIndex;
    end
end
MajIndexFrontierEven = MajIndexFrontierEven(find(MajIndexFrontierEven~=0));    % On enleve les zeros de MajIndexFrontierEven  

end

