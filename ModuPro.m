% Program P3_5
	% Modulation Property of DTFT
    
	clf;
    dw=0.001*pi;
	w = -pi:dw:pi;
	x1 = [2 4 6 8 10 12 14 16 18];
	x2 = [1 -2 1 -2 1 -2 1 -2 1];
	y = x1.*x2;
	h1 = freqz(x1, 1, w);
	h2 = freqz(x2, 1, w);
	h3 = freqz(y,1,w);         %conv h1 h2 / 2pi see if =h3
%     n=0:length(y)-1;
%     hf=y*exp(j*n'*w);
%     plot(w/pi,abs(hf));
%     pause
subplot(3,1,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of First Sequence')
subplot(3,1,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Second Sequence')
subplot(3,1,3)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Product Sequence')

pause
for i=1:length(w)
    hy(i)=0;
    for j= 1:length(w)
        hy(i)=1/(2*pi)*h1(j)*h2(1+mod(i-j,length(w)))*dw+hy(i);
    end
end
hyy=[hy([ceil(length(w)/2:length(w))]),hy([1:floor(length(w)/2)])];%傅里叶变换以2π为周期,周期平移

subplot(2,1,1)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Product Sequence')

subplot(2,1,2)
plot(w/pi,abs(hyy));grid
title('Conv of Spectrum h1 and h2')
