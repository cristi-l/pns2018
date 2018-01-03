function h = coeficientiFTB(ft1,ft2, Fs, N)
%coeficienti pentru filtru trece banda FTB
%ft: frecventa de taiere
%Fs: frecventa de esantionare
%N: numarul de esantionane
n = -(N-1)/2:(N-1)/2;
h=(2*(ft2/Fs)*sinc(n*2*ft2/Fs))-(2*(ft1/Fs)*sinc(n*2*ft1/Fs));

