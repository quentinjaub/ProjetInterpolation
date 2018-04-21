function [ elements3Update ] = MajTriangles( elements3, IndexOdd)

nt=size(elements3,1);
for j = 1:nt
   elements3Update(j,:) =[IndexOdd(3*j-2),IndexOdd(3*j-1),IndexOdd(3*j)] ;
end

end

