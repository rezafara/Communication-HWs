%Testing FFT function
Fs = 10000;  %Sampling frequency
T  = 1/Fs;  %Sampling time
L  = 1000;  %Lenght of signal
t  = (0:L-1)*T;

%Defining Signal
x = 1*sin(2*pi*200*t);
%plot(Fs*t(1:50),x(1:50));
%NFFT = 2^nextpow2(L);
%X = fft(x,NFFT)/L;
%f = Fs/2*linspace(0,1,NFFT/2+1);

%Plotting:
%plot(f,2*abs(X(1:NFFT/2+1)));
plotSigSpec(x,Fs);
