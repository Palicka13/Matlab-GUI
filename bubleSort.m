function buble=bubleSort(A)
Y = A;
for i = 1:length(Y)-1
    for j = 1:length(Y)-1
        if Y(j) > Y(j+1)
            Y([j,j+1]) = Y([j+1,j]);
        end
    end
end
buble = Y;
end