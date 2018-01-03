function h=coeficientFTBIdeal(Ft1,Ft2,Fs,N )
%Ft1-frecventa de taiere 1
%Ft2-frecventa de taiere 2
%Fs-frecventa de esantionare
%N-numarul de esantioane
ct = Fs/2 +1;
		h(-Fs/2+ct:-Ft2+ct)=0;
        h(-Ft2+ct:Ft1+ct)=1;
        h(-Ft1+ct:Ft1+ct)=0;
        h(Ft1+ct:Ft2+ct)=1;
        h(Ft2+ct:Fs/2+ct)=0;
end