function y = sinus(F,len,M,Fs)
y = 0:1/Fs:len;
y=M*sin(2*pi*F*y);
