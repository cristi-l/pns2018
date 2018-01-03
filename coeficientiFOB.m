function h = coeficientiFOB(ft1,ft2, Fs, N)
%coeficienti pentru filtru opreste banda FOB
%ft: frecventa de taiere
%Fs: frecventa de esantionare
%N: numarul de esantionane
n = -(N-1)/2:(N-1)/2;
h=(sinc(n)-(2*(ft2/Fs)*sinc(n*2*ft2/Fs))+(2*(ft1/Fs)*sinc(n*2*ft1/Fs)));
