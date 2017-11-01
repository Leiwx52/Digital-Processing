n=[-4 -3 -2 -1 0 1 2 3 4 5];
num=10*n+8j;
np=fliplr(-n);
nump=fliplr(num);
subplot(2,1,1)
stem(n,abs(num));
title('x[n]')
subplot(2,1,2)
stem(np,abs(nump))
title('x[-n]')
pause
w=-pi:0.001*pi:pi;
f1=num*exp(-j*n'*w);
subplot(3,2,1)
plot(w,abs(f1));
title('x[n]  |X(e^jw)|')
subplot(3,2,2)
plot(w,angle(f1));
title('x[n]  angle of X(e^jw)')

f2=nump*exp(-j*np'*w);
subplot(3,2,3)
plot(w,abs(f2));
title('g[n]=x[-n] |G(e^jw)|')
subplot(3,2,4)
plot(w,angle(f2));
title('g[n]=x[-n] angle of G(e^jw)')

subplot(3,2,5)
plot(-w,abs(f1));
title('x[n]  |X(e^-jw)|')
subplot(3,2,6)
plot(-w,angle(f1));
title('x[n]  angle of X(e^-jw)')
