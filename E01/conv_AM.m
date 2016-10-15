% Besm Allah 
% This script simulates a conventional AM modulator, runs on carrier signal
% of mSig and a carrier with frequency of cFreq and amplitude of cAmp, with
% modulation index of mI.

close all;
clear all;

% Initializing:
cFreq = 250;
cAmp  = 1;
mI    = 0.8;

% Defining message signal:
%Setting boundary:
t0 = 0.4;
% Setting sampling interval:
sI = 10^-4;
% Setting time buffer:
tBuffer = sI:sI:t0; %Avoid generating zero in denominator, so start from sI
% Calculate message signal:
mSig = sin(100*pi*tBuffer)./(100*pi*tBuffer);
%-----------------------------------------------------------

% Plot message signal:
plot(tBuffer,mSig);
xlabel('Time[S]');
ylabel('Message signal');
title('Message signal in time domain');
hold on;

% Defining carrier signal:
cSig    = cAmp*cos(2*pi*cFreq*tBuffer);

% Calculating modulated signal:
uSig = cSig + mI*cSig.*mSig;

% Plotting time domain modulated signal
figure;
plot(tBuffer,uSig,tBuffer,mSig);
xlabel('Time[S]');
legend('Modulated signal','Message signal');
title('Modulated signal in time domain');
hold on;

% Adding frequency analysis:
figure;
plotSigSpec(mSig,1/sI,'c');
hold on;
plotSigSpec(uSig,1/sI,'r');
hold on;
plotSigSpec(cSig,1/sI,'g');
title('Frequency spectrum of message and modulated signal');
legend('Message signal','Modulated signal','Carrier signal');


