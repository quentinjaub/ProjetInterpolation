% Trouve un point sur la frontiere ( avec le - d'occurence )
function [ind1,ind2] = ComputeFrontierPoints(indexrows,elements3,k)
ind1=0;
ind2=0;
for i = 1 : length(indexrows)
    for j = 1:3
        if (elements3(indexrows(i),j)~=k)
            [find_if,~]=find(elements3(indexrows,:)==elements3(indexrows(i),j)); % On regarde le nombre d'occurence de l'element (i,j)
            if(length(find_if)==1)
                % L'élement est le bon
                ind1=elements3(indexrows(i),j);
                break;
            end
        end
    end
end

for i = 1 : length(indexrows)
    for j = 1:3
        if (elements3(indexrows(i),j)~=k && elements3(indexrows(i),j)~=ind1)
            [find_if,~]=find(elements3(indexrows,:)==elements3(indexrows(i),j)); % On regarde le nombre d'occurence de l'element (i,j)
            if(length(find_if)==1)
                % L'élement est le bon
                ind2=elements3(indexrows(i),j);
                break;
            end
        end
    end
end

end