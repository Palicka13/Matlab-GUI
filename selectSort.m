function select = selectSort(pole)
select = []; 
while ~isempty(pole)
    tempMin = pole(1);
    for i = 1:length(pole)
        if pole(i) <= tempMin
            tempMin = pole(i);
        end
    end
    select = [select, tempMin];
    pole(pole == tempMin) = [];
end
end