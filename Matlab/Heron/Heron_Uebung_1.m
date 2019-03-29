clearvars;
disp(sprintf('Übung 1 - b'))
n = 5;
X = [0.05;3;1000];
b = [];
for r = 1:size(X)
    k = X(r);
    b = [b;k, n , heron(k,k,n), heronError(k,k,n)];
end
b
plot(b);

clearvars;
disp(sprintf('Übung 1 - c'))
calcxVals = [2.5;10;100;1000;1000000];
initaVals = [1,10,100,1000,10000];
siz = 70;
% calcxVals = reshape(1:siz,siz,1);
% initaVals = (1:siz);
A = [];
for p = 1:size(calcxVals)
    d(1:size(calcxVals)) = calcxVals(p);
%     [Zu suchender Wert/1e6,Anzahl it für Erreichung mit Startwert a0,..]
    A = [A;calcxVals(p)/1e6,arrayfun(@heronGetLoops,initaVals,d)];
end
A
plot(A)