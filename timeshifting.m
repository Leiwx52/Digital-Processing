% Program P3_2
% Time-Shifting Properties of DTFT
clf;
w = -pi:2*pi/255:pi; wo = 0.4*pi; D = 3;
n = -1 : 12;
num = [2 4 6 8 10 12];
h1 = freqz(num, 1, w);
h2 = freqz([zeros(1,D) num], 1, w);
x1 = impz(num, 1, n);
x2 = impz([zeros(1,D) num], 1, n);
subplot(2,2,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
subplot(2,2,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Time-Shifted Sequence')
subplot(2,2,3)
plot(w/pi,angle(h1));grid
title('Phase Spectrum of Original Sequence')
subplot(2,2,4)
plot(w/pi,angle(h2));grid
title('Phase Spectrum of Time-Shifted Sequence')
pause;
subplot(2,1,1)
stem(n,x1);grid
title('x[n]')
subplot(2,1,2)
stem(n,x2);grid
title('x[n-3]')
