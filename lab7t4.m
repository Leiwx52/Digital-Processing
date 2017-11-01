xn=[0 1 2 3 4 5 6 7 8 9];
L=length(xn);
n=0:L-1;
N=4;
k=0:N-1;
Wn=exp(-j*2*pi/N);
Xk=xn*Wn.^(n'*k);
Idft=(Xk*exp(j*2*pi/N).^(k'*n))/N;
subplot(2,2,1)
stem(n,xn,'k');
title('Ô­ÐÅºÅ');
subplot(2,2,2)
stem(n,abs(Idft),'k');
title('N=4 |IDFT|');
subplot(2,2,3)
stem(k,abs(Xk),'k');
title('N=4 |X[k]|');
subplot(2,2,4)
stem(k,angle(Xk),'k');
title('N=4  angle of X[k]');