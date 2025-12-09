function heap = heapSort(heap)
delkaPole = length(heap);
for i = floor(delkaPole / 2):-1:1
    heap = heapify(heap, delkaPole, i);
end

for i = delkaPole:-1:2
    heap = swap(heap, 1, i);
    heap = heapify(heap, i - 1, 1);
end
end

function heap = heapify(heap, delkaPole, i)
    nejvetsi = i;
    leva = 2 * i;
    prava = 2 * i + 1;

    if leva <= delkaPole && heap(leva) > heap(nejvetsi)
        nejvetsi = leva;
    end

    if prava <= delkaPole && heap(prava) > heap(nejvetsi)
        nejvetsi = prava;
    end

    if nejvetsi ~= i
        heap = swap(heap, i, nejvetsi);
        heap = heapify(heap, delkaPole, nejvetsi);
    end
end
function heap = swap(heap, index, nextIndex)
    heap([index nextIndex]) = heap([nextIndex index]);
end 
% %
% public void SortHeap(T[] Pole)
%         {
%             int delka_pole = Pole.Length;
%             for (int i = delka_pole / 2; i >= 0; i--)
%             {
%                 Heapify(Pole, delka_pole, i);
%             }
% 
%             for (int i = delka_pole - 1; i > 0; i--)
%             {
%                 Vymena(Pole, 0, i);
%                 Heapify(Pole, i, 0);
%             }
%         }
% 
%         private void Heapify(T[] Pole, int delka_pole, int i)
%         {
%             int nejvetsi = i;
%             int leva = 2 * i + 1;
%             int prava = 2 * i + 2;
% 
%             if (leva < delka_pole && Pole[leva].CompareTo(Pole[nejvetsi]) > 0)
%             {
%                 nejvetsi = leva;
%             }
% 
%             if (prava < delka_pole && Pole[prava].CompareTo(Pole[nejvetsi]) > 0)
%             {
%                 nejvetsi = prava;
%             }
% 
%             if (nejvetsi != i)
%             {
%                 Vymena(Pole, i, nejvetsi);
%                 Heapify(Pole, delka_pole, nejvetsi);
%             }
%         }
% 
%         private void Vymena(T[] pole, int i, int j)
%         {
%             T temp = pole[i];
%             pole[i] = pole[j];
%             pole[j] = temp;
%         }