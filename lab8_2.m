xn=1:6;       %����xn����
Nx=length(xn);nx=0:Nx-1;
nx1=-Nx:2*Nx-1;%�����������صķ�Χ
x1=xn(mod(nx1,Nx)+1);%����������������
ny1=nx1-2;
y1=x1;%��x1����2λ���õ�y1
RN=(nx1>=0)&(nx1<Nx);%��x1��λ������nx1��������ֵ��
RN1=(ny1>=0)&(ny1<Nx);%��y1��λ������ny1��������ֵ��
subplot(4,1,1);
stem(nx1,RN.*x1);%����x1����ֵ����
subplot(4,1,2);
stem(nx1,x1);%����x1
subplot(4,1,3);
stem(ny1,y1);%����y1
subplot(4,1,4);
stem(ny1,RN1.*y1); %����y1����ֵ����