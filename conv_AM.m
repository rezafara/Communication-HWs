% Besm Allah 
% This script simulates a conventional AM modulator, runs on carrier signal
% of mSig and a carrier with frequency of cFreq and amplitude of cAmp, with
% modulation index of mI.

close all;
clear all;

% Initializing:
cFreq = 1000;
cAmp  = 1;
mI    = 0.8;

% Defining message signal:

%Setting boundary:
t0 = 0.1;
% Setting sampling interval:
sI = 10^-4;
% Setting time buffer:
tBuffer = sI:sI:t0; %Avoid generating zero in denominator, so start from sI
% Calculate message signal:
mSig = sin(pi*tBuffer)./(pi*tBuffer);
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
plotSigSpec(mSig,1/sI);
%hold on;
%plotSigSpec(cSig,1/sI);
title('Frequency spectrum of Message signal');
hold on;


