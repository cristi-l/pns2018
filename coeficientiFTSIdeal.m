function h=coeficientFTSIdeal(Ft,Fs,N )
%Ft-frecventa de taiere
%Fs-frecventa de esantionare
%N-numarul de esantioane
ct = Fs/2 +1;
		h(-Fs/2+ct:-Ft+ct)=1;
        h(-Ft+ct:Ft+ct)=0;
        h(Ft+ct:Fs/2+ct)=1;

end