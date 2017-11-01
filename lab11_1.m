fp=6000; Omgp=2*pi*fp;
fs=15000; Omgs=2*pi*fs;
Rp=1; As=30;
[n,Omgc]=buttord(Omgp,Omgs,Rp,As,'s');
[z0 p0 k0]=buttap(n);
b0=k0*real(poly(z0));
a0=real(poly(p0));
%freqs(b0,a0);
[H Omg]=freqs(b0,a0);
subplot(2,1,1),
a1=plot(Omg*Omgc/(2*pi),abs(H)),grid;
xlabel('freq(Hz)');ylabel('Amplitude');
axis([0,20000,0,1.1])
a1.LineWidth=2;
a1.Color='b';

subplot(2,1,2),
a2=plot(Omg*Omgc/(2*pi),angle(H)),grid;
xlabel('freq(Hz)');ylabel('Angle');
a2.LineWidth=2;
a2.Color='b';
axis([0,20000,-4,4]);

pause
clf
Omgx0=[Omgp Omgs]/Omgc;
Hx=freqs(b0,a0,Omgx0);
dbHx=-20*log10(abs(Hx)/max(abs(H)));
a3=plot(p0*Omgc,'x');
%a3.LineWidth=3;
axis square,axis equal,grid on



