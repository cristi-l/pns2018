function y = triunghi(F,len,M,Fs)
y = 0:1/Fs:len;
y=M*sawtooth(2*pi*F*y,0.5);

