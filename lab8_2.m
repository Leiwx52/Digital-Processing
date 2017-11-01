xn=1:6;       %建立xn序列
Nx=length(xn);nx=0:Nx-1;
nx1=-Nx:2*Nx-1;%设立周期延拓的范围
x1=xn(mod(nx1,Nx)+1);%建立周期延拓序列
ny1=nx1-2;
y1=x1;%将x1左移2位，得到y1
RN=(nx1>=0)&(nx1<Nx);%在x1的位置向量nx1上设置主值窗
RN1=(ny1>=0)&(ny1<Nx);%在y1的位置向量ny1上设置主值窗
subplot(4,1,1);
stem(nx1,RN.*x1);%画出x1的主值部分
subplot(4,1,2);
stem(nx1,x1);%画出x1
subplot(4,1,3);
stem(ny1,y1);%画出y1
subplot(4,1,4);
stem(ny1,RN1.*y1); %画出y1的主值部分