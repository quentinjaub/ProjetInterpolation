function [ elements3Update, MajIndexFrontierOdd ] = OddReconstruction( oddVertices,MajIndexFrontierOdd ,elements3,coordinateUpdate,frontierIndex)

    % Numerotation nouveaux sommets : 
    [ MajIndexFrontierOdd, IndexOdd ] = NumerotationSommets( oddVertices , MajIndexFrontierOdd,coordinateUpdate,frontierIndex);
    % Maj elements3 -> Construction des triangles ODD
    [ elements3Update ] = MajTriangles( elements3, IndexOdd);

end


