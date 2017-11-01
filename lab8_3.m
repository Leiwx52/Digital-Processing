x1=1:7;          %建立x(n)，N＝7序列
N1=length(x1);
n1=0:N1-1;
y1=x1(mod(-n1,N1)+1);%建立x(－n)，N＝7序列
N2=10;
x2=[x1,zeros(1,N2-N1)];%建立x(n)，N＝10序列
n2=0:N2-1;
y2=x2(mod(-n2,N2)+1);%建立x(－n)，N＝10序列
subplot(2,2,1);
stem(n1,x1,'k');%画x(n),N＝7
title('x(n) N＝7');
subplot(2,2,3);
stem(n1,y1,'k');%画x(－n),N＝7
title('x(－n) N＝7');
subplot(2,2,2);
stem(n2,x2,'k');%画x(n) N＝10
title('x(n) N＝10');
subplot(2,2,4);
stem(n2,y2,'k');%画x(－n),N＝10

pause
clf

k=0:N1-1;
wn1=exp(-j*2*pi/N1);
Xk1=x1*wn1.^(n1'*k);
Yk1=y1*wn1.^(n1'*k);
subplot(2,2,1);
stem(k,real(Xk1),'filled');
title('real Xk1');
subplot(2,2,2);
stem(k,imag(Xk1),'filled');
title('imag Xk1');

subplot(2,2,3);
stem(k,real(Yk1),'filled');
title('real Yk1');
subplot(2,2,4);
stem(k,imag(Yk1),'filled');
title('imag Yk1');



