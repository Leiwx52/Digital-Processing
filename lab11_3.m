fp=6000; Omgp=2*pi*fp;
fs=15000; Omgs=2*pi*fs;
Rp=1; As=30;

[n,Omgn]=cheb2ord(Omgp,Omgs,Rp,As,'s');
[z0 p0 k0]=cheb2ap(n,As);

b0=k0*real(poly(z0));
a0=real(poly(p0));
b1=[zeros(1,length(a0)-length(b0)),b0];
[sos g]=tf2sos(b1,a0);%直接型转级联型
[H,Omg]=freqs(b0,a0);
dbH=20*log10((abs(H)+eps)/max(abs(H)));

[H Omg]=freqs(b0,a0);
subplot(2,1,1),
a1=plot(Omg*Omgn/(2*pi),abs(H)),grid;
xlabel('freq(Hz)');ylabel('Amplitude');
axis([0,20000,0,1.1])
a1.LineWidth=2;
a1.Color='b';

subplot(2,1,2),
a2=plot(Omg*Omgn/(2*pi),angle(H)),grid;
xlabel('freq(Hz)');ylabel('Angle');
a2.LineWidth=2;
a2.Color='b';
axis([0,20000,-4,4]);

pause
clf
subplot(2,1,1),a3=plot(Omg*Omgn/(2*pi),dbH),grid;a3.LineWidth=2;
axis([0,15000,-100,5]);
ylabel('幅度(dB)'),xlabel('freq(Hz)');

subplot(2,1,2),
pzmap(b0,a0);

% a4=plot(p0*Omgn,'x');a4.LineWidth=2;
 axis square,axis equal,grid on;
Omgx0=[Omgp,Omgn,Omgs]/Omgn;
Hx=freqs(b0,a0,Omgx0);
dbHx=-20*log10(abs(Hx)/max(abs(H)));
