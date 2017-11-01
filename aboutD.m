xn=[7 6 5 4 3 2];
N=length(xn);
n=0:N-1;
w=linspace(-2*pi,2*pi,500);  %���ۣ�2p��2p��Ƶ������ָ�Ϊ500��
X=xn*exp(-j*n'*w);%��ɢʱ�丵��Ҷ�任
subplot(3,2,1);
stem(n,xn,'k');
title('x(n)');
subplot(3,2,3);
plot(w,abs(X),'k');%��ʾ���еķ�����
axis([-2*pi,2*pi,1.1*min(abs(X)),1.1*max(abs(X))]);
title('������');
subplot(3,2,5);
plot(w,angle(X),'k');%��ʾ���е���λ��
axis([-2*pi,2*pi,1.1*min(angle(X)),1.1*max(angle(X))]);
title('��λ��');
L=100;
xdft = [xn zeros(1,L-N)];
Wn=exp(-j*2*pi/L);
k=0:L-1;nn=0:L-1;
Xk=xdft*Wn.^(nn'*k);
subplot(3,2,2)
stem(nn,xdft,'k');
title('N=100 ����')
subplot(3,2,4)
stem(k,abs(Xk),'k');
title('N=100 |DFT|')
subplot(3,2,6)
stem(k,angle(Xk),'k');
title('N=100 angle of DFT')





