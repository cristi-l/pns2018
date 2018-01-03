function y = dreptunghi(F,len,M,Fs)
y = 0:1/Fs:len;
y=M*sign(sin(2*pi*F*y));
