x=[ones(1,5),zeros(1,5)]    %建立x(n)序列
N=length(x);
n=0:N-1;
k=0:N-1;
xr=x(mod(-n,N)+1);%求x(－n)
xe=0.5*(x+xr)%求x(n)的偶序列
xo=0.5*(x-xr)%求x(n)的奇序列
X=x*(exp(-j*2*pi/N)).^(n'*k);%由x(n)的DFT求X(k)
Xe=xe*(exp(-j*2*pi/N)).^(n'*k);%由xe(n)的DFT求Xe(k)
Xo=xo*(exp(-j*2*pi/N)).^(n'*k);%由xo(n)的DFT求Xo(k)
error1=(max(abs(real(X)-Xe)))%计算X(k)的实部与Xe(k)的差值
error2=(max(abs(j*imag(X)-Xo)))%计算X(k)的虚部与Xo(k)的差值

subplot(2,4,1);
stem(n,x,'filled');
title('x[n]');

subplot(2,4,2);
stem(n,xr,'filled');
title('x[-n]');

subplot(2,4,3);
stem(n,xe,'filled');
title('xe[n]');

subplot(2,4,4);
stem(n,xo,'filled');
title('xo[n]');

subplot(2,4,5);
stem(k,real(X),'filled');
title('real Xk');

subplot(2,4,6);
stem(k,imag(X),'filled');
title('imag Xk');

subplot(2,4,7);
stem(k,real(Xe),'filled');
title('Xe');

subplot(2,4,8);
stem(k,imag(Xo),'filled');
title('Xo');





