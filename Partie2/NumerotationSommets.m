function [ MajIndexFrontierOdd, IndexOdd ] = NumerotationSommets( oddVertices , MajIndexFrontierOdd,coordinateUpdate,frontierIndex)

  
IndexOdd=zeros(size(oddVertices,1),1);
IndexOdd(1)=1;
cpt=2;
compt=0;

for j = 2:size(oddVertices,1)
   isIndexOdd=0;
   for i = 1:j-1
    % Si le jeme point a déja été traité -> on recupere son
    % indice dans IndexOdd
       if( isequal(oddVertices(j,:),oddVertices(i,:)) ) 
           isIndexOdd=IndexOdd(i);
           compt=compt+1;
           break;
       end
   end
   
   if(isIndexOdd==0)
       % Pas traite
       IndexOdd(j)=cpt;
       cpt=cpt+1;
       if(any(MajIndexFrontierOdd==j))
           iff=find(MajIndexFrontierOdd==j);
           MajIndexFrontierOdd(iff)=cpt-1;
       end
   else
       % Point deja traite
       IndexOdd(j)=isIndexOdd;
   end
end

end
% 

