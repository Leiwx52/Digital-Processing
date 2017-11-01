xn=[7 6 5 4 3 2];
N=length(xn);
n=0:N-1;
w=linspace(-2*pi,2*pi,500);  %将［－2p，2p］频率区间分割为500份
X=xn*exp(-j*n'*w);%离散时间傅里叶变换
subplot(3,2,1);
stem(n,xn,'k');
title('x(n)');
subplot(3,2,3);
plot(w,abs(X),'k');%显示序列的幅度谱
axis([-2*pi,2*pi,1.1*min(abs(X)),1.1*max(abs(X))]);
title('幅度谱');
subplot(3,2,5);
plot(w,angle(X),'k');%显示序列的相位谱
axis([-2*pi,2*pi,1.1*min(angle(X)),1.1*max(angle(X))]);
title('相位谱');
L=100;
xdft = [xn zeros(1,L-N)];
Wn=exp(-j*2*pi/L);
k=0:L-1;nn=0:L-1;
Xk=xdft*Wn.^(nn'*k);
subplot(3,2,2)
stem(nn,xdft,'k');
title('N=100 序列')
subplot(3,2,4)
stem(k,abs(Xk),'k');
title('N=100 |DFT|')
subplot(3,2,6)
stem(k,angle(Xk),'k');
title('N=100 angle of DFT')





