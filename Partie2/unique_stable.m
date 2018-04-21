function [v] = unique_stable(mat)
  

if(~isempty(mat))
  v=mat(1,:);
  for j = 2:size(mat,1)
      isInV=0;
      for i = 1:size(v,1)
        if (v(i,:)==mat(j,:))
          isInV=1;
         end
      end
      if(~isInV)
        v=[ v ; mat(j,:) ];
      end
  end
else
  v=[];
end
 
