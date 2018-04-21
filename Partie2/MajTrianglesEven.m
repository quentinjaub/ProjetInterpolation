function [ newElements ] = MajTrianglesEven(EvenVertices, elements3Update, IndexEven,newElementsOdd,oddVertices)

    % On cherche a former les triangles à partir des nouveaux points even
    % et des points odd déja calculés 

    for i = 1:size(elements3Update,1) 
        % On parcourt chaque triangle Odd construit precedemment
        %-> On construit 3 nouveaux triangles avec les evens
        newElements(4*i-2,:) = [elements3Update(i,2), newElementsOdd(i,2),newElementsOdd(i,1)];
        newElements(4*i-1,:) = [elements3Update(i,3), newElementsOdd(i,3),newElementsOdd(i,2)];
        newElements(4*i-3,:) = [elements3Update(i,1), newElementsOdd(i,1),newElementsOdd(i,3)];
        newElements(4*i,:) = newElementsOdd(i,:);
    end

end

