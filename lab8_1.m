xn1=[10,1,2,4];             %建立xn1序列
xn2=[1,0,1,0,1];  %建立xn2序列
N1=length(xn1);N2=length(xn2);
N=max(N1,N2);%确定N
if N1>N2 
    xn2=[xn2,zeros(1,N1-N2)];%对长度短的序列补0
else if N2>N1 
        xn1=[xn1,zeros(1,N2-N1)];
    end
end
    yn=2*xn1+3*xn2;%计算yn
    n=0:N-1;
    k=0:N-1;
    Yk1=yn*(exp(-j*2*pi/N)).^(n'*k);%求yn的N点DFT
    Xk1=xn1*(exp(-j*2*pi/N)).^(n'*k);%求xn1的N点DFT
    Xk2=xn2*(exp(-j*2*pi/N)).^(n'*k);%求xn2的N点DFT
    Yk2=2*Xk1+3*Xk2;%由Xk1、Xk2求Yk
    subplot(4,2,1);
    stem(n,xn1,'filled');
    title('xn1');
     
    subplot(4,2,2);
    stem(k,abs(Xk1),'filled');
    title('Xk1');
    
    subplot(4,2,3);
    stem(n,xn2,'filled');
    title('xn2');
    
     subplot(4,2,4);
    stem(k,abs(Xk2),'filled');
    title('Xk2');
    
    subplot(4,2,5);
    stem(n,yn,'filled');
    title('yn=2*xn1+3*xn2');
    
    subplot(4,2,6);
    stem(k,abs(Yk1),'filled');
    title('Yk1');
    
     subplot(4,2,8);
    stem(k,abs(Yk2),'filled');
    title('Yk2=2*Xk1+3*Xk2');
    
    pause
    clf;
    
    subplot(2,2,1);
    stem(k,real(Yk1),'filled');
    title('real Yk1');
    subplot(2,2,2);
    stem(k,imag(Yk1),'filled');
    title('imag Yk1')
    
     subplot(2,2,3);
    stem(k,real(Yk2),'filled');
    title('real Yk2');
    subplot(2,2,4);
    stem(k,imag(Yk2),'filled');
    title('imag Yk2')
    