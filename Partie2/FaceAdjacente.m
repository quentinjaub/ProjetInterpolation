function [ indexTriangles ] = FaceAdjacente( k,j,j_1,elements3 )

     [indexrow,~] =find(elements3==elements3(k,j_1)); % indices des triangles contenant Pj+1
     [indexrowj,~] =find(elements3==elements3(k,j));% indices des triangles contenant Pj
     indexTriangles =zeros(2,1);
     ip=1;
     for ij = 1:length(indexrowj)
        indexTriangle = find(indexrow==indexrowj(ij)); % indice des deux triangles contenant Pj et Pj+1
        if(~isempty(indexTriangle))
            indexTriangles(ip)=indexrowj(ij);
            ip=ip+1;
        end
     end
end

