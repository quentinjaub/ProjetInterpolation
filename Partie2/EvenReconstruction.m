function [ newElements, MajIndexFrontierEven ] = EvenReconstruction( EvenVertices,MajIndexFrontierEven ,elements3Update,newElementsOdd,oddVertices,coordinateUpdate,frontierIndex)

    % Numerotation nouveaux sommets : 
    [ MajIndexFrontierEven, IndexEven ] = NumerotationSommets( EvenVertices , MajIndexFrontierEven,coordinateUpdate,frontierIndex);
    % Maj elements3 -> Construction des triangles Even
    length(IndexEven)
    size(newElementsOdd,1)
    [ newElements ] = MajTrianglesEven(EvenVertices, elements3Update, IndexEven,newElementsOdd,oddVertices);
    

end

