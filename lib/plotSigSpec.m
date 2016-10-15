function [ SIG ] = plotSigSpec( sig,Fs,lineSpec )
%plotSigSpec Plots signal single sided spectra using matlab fft function 
%   Sig : Input signal in time domain
%   Fs  : Sampling frequency

%Defining Signal
NFFT = 2^nextpow2(numel(sig));
SIG = fft(sig,NFFT)/numel(sig);
f = Fs/2*linspace(0,1,NFFT/2+1);

%Plotting time:
plot(f,2*abs(SIG(1:NFFT/2+1)),lineSpec);
xlabel('Frequency[Hz]');
ylabel('|X(f)|');



end

