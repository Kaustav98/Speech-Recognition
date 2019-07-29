[K1,Fs] = audioread('K1.wav');
[K2,Fs] = audioread('K2.wav');
[K3,Fs] = audioread('K3.wav');
[V1,Fs] = audioread('V1.wav');
[V2,Fs] = audioread('V2.wav');
[V3,Fs] = audioread('V3.wav');

K1 = mfcc(K1,Fs);
K2 = mfcc(K2,Fs);
K3 = mfcc(K3,Fs);
V1 = mfcc(V1,Fs);
V2 = mfcc(V2,Fs);
V3 = mfcc(V3,Fs);

minLength = min([length(K1),length(K2),length(K3),length(V1),length(V2),length(V3)]);

K2 = K2(6541:end);
K3 = K3(1561:end);
V1 = V1(1741:end);
V2 = V2(1561:end);
V3 = V3(761:end);

% K1 = abs(K1);
% K2 = abs(K2);
% K3 = abs(K3);
% V1 = abs(V1);
% V2 = abs(V2);
% V3 = abs(V3);
% inputSet = [K1;K2;K3;V1;V2;V3];
% 
% y = [1; 1; 1; 0; 0; 0];









