xn1=[10,1,2,4];             %����xn1����
xn2=[1,0,1,0,1];  %����xn2����
N1=length(xn1);N2=length(xn2);
N=max(N1,N2);%ȷ��N
if N1>N2 
    xn2=[xn2,zeros(1,N1-N2)];%�Գ��ȶ̵����в�0
else if N2>N1 
        xn1=[xn1,zeros(1,N2-N1)];
    end
end
    yn=2*xn1+3*xn2;%����yn
    n=0:N-1;
    k=0:N-1;
    Yk1=yn*(exp(-j*2*pi/N)).^(n'*k);%��yn��N��DFT
    Xk1=xn1*(exp(-j*2*pi/N)).^(n'*k);%��xn1��N��DFT
    Xk2=xn2*(exp(-j*2*pi/N)).^(n'*k);%��xn2��N��DFT
    Yk2=2*Xk1+3*Xk2;%��Xk1��Xk2��Yk
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
    