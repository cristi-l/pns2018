function h = coeficientiFTS(ft, Fs, N)
%coeficienti pentru filtru trece sus FTS
%ft: frecventa de taiere
%Fs: frecventa de esantionare
%N: numarul de esantionane
n = -(N-1)/2:(N-1)/2;
h=(sinc(n)-2*(ft/Fs)*sinc(n*2*ft/Fs)); 

