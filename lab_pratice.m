% xn=[4 0 3 0 2 0 1];
% N=length(xn);
% n=0:N-1;
% index=1:N;
% subplot(2,1,1)
% stem(n,xn,'b','filled');
% grid;
% axis([0,6,-1,5]);
% title('x[n]')
% 
% y=xn(mod(index-1-2,N)+1);
% subplot(2,1,2)
% stem(n,y,'b','filled');
% grid;
% axis([0,6,-1,5]);
% title('y[n]')


%shift



% xn=[8 7 6 5 4 3];
% L=length(xn);N=10;
% x=[xn zeros(1,N-L)];
% n=0:N-1;
% subplot(2,1,1);
% stem(n,x,'b','filled');
% grid
% title('x[n]')
% y=x(mod(-n,N)+1);
% subplot(2,1,2);
% stem(n,y,'b','filled');
% grid
% title(' x[(-n) mod N]')
% pause
% %DFT proveclf
% 
% 
% clf
% k=0:N-1;
% Wn=exp(-j*2*pi/N);
% Xk=x*Wn.^(n'*k);
% subplot(2,2,1);
% stem(k,real(Xk));
% grid;title('real(Xk)')
% subplot(2,2,2);
% stem(k,imag(Xk));
% grid;title('imag(Xk)')
% 
% Yk=y*Wn.^(n'*k);
% subplot(2,2,3);
% stem(k,real(Yk));
% grid;title('real(Yk)')
% subplot(2,2,4);
% stem(k,imag(Yk));
% grid;title('imag(Yk)')



%circular shift and prove

% clf
% x1=[5,4,-3,-2];
% x2=[1 2 3 0];
% L1=length(x1);
% L2=length(x2);
% L=max(L1,L2);
% if L1>L2
%  x2=[x2 zeros(1,L-L2)];
% else
%  x1=[x1 zeros(1,L-L1)];
% end
% n=0:L-1;
% k=0:L-1;
% Wn=exp(-j*2*pi*L);
% Xk1=x1*Wn.^(n'*k);
% Xk2=x2*Wn.^(n'*k);
% Yk=Xk1.*Xk2;
% y=Yk*Wn.^(-k'*n);
% 
% subplot(3,2,1)
% stem(n,x1,'filled');grid;title('x1[n]');
% subplot(3,2,2)
% stem(k,abs(Xk1),'filled');grid;title('X1[k]');
% 
% subplot(3,2,3)
% stem(n,x2,'filled');grid;title('x2[n]');
% subplot(3,2,4)
% stem(k,abs(Xk2),'filled');grid;title('X2[k]');
% 
% subplot(3,2,5)
% stem(n,abs(y),'filled');grid;title('y[n]');
% subplot(3,2,6)
% stem(k,abs(Yk),'filled');grid;title('Y[k]');

% t3




figure; imshow(phantom);pause
phantom_freq = fft2(phantom);
figure; imshow(ifft2(phantom_freq(1:2:size(phantom,1),:)))
