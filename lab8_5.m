x=[ones(1,5),zeros(1,5)]    %����x(n)����
N=length(x);
n=0:N-1;
k=0:N-1;
xr=x(mod(-n,N)+1);%��x(��n)
xe=0.5*(x+xr)%��x(n)��ż����
xo=0.5*(x-xr)%��x(n)��������
X=x*(exp(-j*2*pi/N)).^(n'*k);%��x(n)��DFT��X(k)
Xe=xe*(exp(-j*2*pi/N)).^(n'*k);%��xe(n)��DFT��Xe(k)
Xo=xo*(exp(-j*2*pi/N)).^(n'*k);%��xo(n)��DFT��Xo(k)
error1=(max(abs(real(X)-Xe)))%����X(k)��ʵ����Xe(k)�Ĳ�ֵ
error2=(max(abs(j*imag(X)-Xo)))%����X(k)���鲿��Xo(k)�Ĳ�ֵ

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





