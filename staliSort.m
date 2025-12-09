function stalin=staliSort(A)
tempMax = A(1);
%result = zeros(size(A));
result(1) = tempMax;
index = 2;
for i = 2:length(A)
    if tempMax <= A(i)
        result(index) = A(i);
        index = index+1;
        tempMax = A(i);
    end
end
stalin = result;
end
