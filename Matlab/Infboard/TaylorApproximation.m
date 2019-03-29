function [ output_args ] = TaylorApproximation(Entwicklungspunkt, OrdnungenDerApprox, f, Punkte, Genauigkeit)
syms x;
t=ezplot(f);
set(t,'color', 'blue')
hold;
werte=[OrdnungenDerApprox:length(Punkte)];
genauigkeit=[OrdnungenDerApprox:length(Punkte)];
for z=1:OrdnungenDerApprox
    funktionz_Punktz = taylor(f,'ExpansionPoint',Entwicklungspunkt,'Order',z+1);
    p=ezplot(funktionz_Punktz);
    set(p,'color', 'red')
    werte(z,1)=z;
    genauigkeit(z,1)=z;
    for i=1:length(Punkte)
        punkt=Punkte(i);
        genauerWert=subs(f,x,punkt);
        wert=vpa(subs(funktionz_Punktz,x,punkt),Genauigkeit);
        werte(z,i+1)=wert;
        genauigkeit(z,i+1)=vpa(-100*wert/genauerWert+100);
    end
end

dimesionen = size(werte);
for h=1:dimesionen(1)
    for k=1:dimesionen(2)
        werte(h,k);
    end
end

werte
genauigkeit
end



