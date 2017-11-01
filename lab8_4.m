xn1=[0,1,2,3,0,0];         %建立x1(n)序列
xn2=[1,1,1,0,0,0];	%建立x2(n)序列
N=length(xn1);n=0:N-1;
k=0:N-1;
Xk1=xn1*(exp(-j*2*pi/N)).^(n'*k);%由x1(n)的DFT求X1(k)
Xk2=xn2*(exp(-j*2*pi/N)).^(n'*k);%由x2(n)的DFT求X2(k)
Yk=Xk1.*Xk2;%Y(k)＝X1(k)X2(k)
yn=Yk*(exp(j*2*pi/N)).^(k'*n)/N;%由Y(k)的IDFT求y(n)

subplot(2,3,1);
stem(n,xn1,'filled');title('xn1');
subplot(2,3,2);
stem(n,xn2,'filled');title('xn2');
subplot(2,3,3);
stem(n,abs(yn),'filled');title('yn');
subplot(2,3,4);
stem(k,abs(Xk1),'filled');title('Xk1');
subplot(2,3,5);
stem(k,abs(Xk2),'filled');title('Xk2');
subplot(2,3,6);
stem(k,abs(Yk),'filled');title('Yk1');
