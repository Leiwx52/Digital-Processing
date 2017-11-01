dt=.01*pi;
t=-2*pi:dt:2*pi;
N=length(t);
for i=1:N
    if (abs(t(i))<pi)
        ft(i)=1/2*(1+cos(t(i)));%建立原信号
    else ft(i)=0;
    end
end

subplot(3,1,1);                               %通过注释本部分控制画图
plot(t,ft,'black');title('f(t)=0.5*(1+cos(t))');axis([-4,4,0,1.1]);
xlabel('t');ylabel('f(t)');
subplot(3,1,2);
w1=-6*pi:0.01*pi:6*pi;
Ft=ft*exp(-j*t'*w1)*dt;
plot(w1,abs(Ft),'b');
xlabel('w');title('|Ft|');
subplot(3,1,3);
plot(w1,angle(Ft),'r');
xlabel('w');title('angle of Ft');

T=2;ws=2*pi/T;      %修改T以画出不同采样周期的情况
n1=T:T:2*pi;    
n2=-n1;n2=fliplr(n2);
nt=[n2 ,0 ,n1];
ln=length(nt);
l1=length(n1);
m1=1:1:l1;
m2=-l1:1:-1;
n=[m2 0 m1];
for i=1:ln
     if (abs(nt(i))<=pi)
        fn(i)=1/2*(1+cos(nt(i)));%建立原信号
    else fn(i)=0;
    end
end

subplot(3,1,1);                                           %通过注释本部分控制画图
stem(n,fn,'black','filled');
xlabel('n');ylabel('f[n]');title('T=2 f[n]');
Fn=fn*exp(-j*n'*w1);
subplot(3,1,2);
plot(w1,abs(Fn));
xlabel('w');title('|Fn|');
subplot(3,1,3);
plot(w1,angle(Fn),'r');
xlabel('w');title('angle of Fn');
fnt=fn*exp(-j*nt'*w1)*T;

Wc=2.4;
for i=1:length(t)
    Xa(i)=Wc/pi*fn*sinc( Wc/pi * ( t(i)*ones(length(nt),1 )-nt' ))*T;
end
subplot(2,2,1);                                                                                 %通过注释本部分控制画图
plot(t,ft,'red');
axis([-2*pi,2*pi,1.1*min(ft),1.1*max(ft)]);title('原信号f(t)');xlabel('t');ylabel('f(t)');
subplot(2,2,2);
stem(n,fn,'filled');axis([-2*pi,2*pi,1.1*min(fn),1.1*max(fn)]);title('T=2  采样信号f[n]');xlabel('n');ylabel('f[n]');%修改标题
subplot(2,2,3);
plot(t,Xa,'blue');
title('重建信号Xa(t)');xlabel('t');ylabel('Xa(t)');
axis([-2*pi,2*pi,1.1*min(Xa),1.1*max(Xa)]);
subplot(2,2,4);
plot(t,abs( abs(ft)-abs(Xa) ),'k--*');title('绝对误差E(t)');xlabel('t');ylabel('E(t)');
axis([-2*pi,2*pi,0,.4]);