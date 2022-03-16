clear all
clc
close all

matrix = csvread("dados-teste.csv");
len = size(matrix)

maiorMediaIndex = 0;
maiorMediaValor = 0;
for k = 1:len(1)
    soma = 0;
    for j = 1:len(2)
        soma = soma + matrix(k, j);
    end
    media = soma / len(2);
    if(media > maiorMediaValor)
        maiorMediaIndex = k;
        maiorMediaValor = media;
    end
end
maiorMediaIndex
maiorMediaValor

y = matrix(maiorMediaIndex, :);
x = 1:len(1);

pl = polyfit(x, y, 1);
pq = polyfit(x, y, 2);
pp = polyfit(x, y, 3);

linear = ['y = ', num2str(pl(1), 4),  'x + ', num2str(pl(2), 4)];
disp(linear);

parabola = ['y = ', num2str(pq(1), 4),'x^2 + ', num2str(pq(2),4) 'x + ' num2str(pq(3),4)];
disp(parabola);

grauTres = ['y = ', num2str(pp(1), 4),'x^3 + ', num2str(pp(2), 4) 'x2 + ' num2str(pp(3), 4), 'x + ' num2str(pp(4), 4)];
disp(grauTres);