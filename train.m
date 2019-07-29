% Speaker Recognition: Training Stage
%
% Input:
%       traindir : string name/path of directory contains all train sound files
%       n        : number of train files in traindir
%
% Output:
%       code     : trained VQ codebooks, code{i} for i-th speaker
%
% Note:
%       Sound files in traindir is supposed to be: 
%                       s1.wav, s2.wav, ..., sn.wav

k = 16;                         % number of centroids required

[k1, fs] = audioread('K1.wav');
vk1 = mfcc(k1,fs);            % Compute MFCCs
code{1} = vqCodeBook(vk1, k);      % Train VQ codebook

[k2, fs] = audioread('K2.wav');
vk2 = mfcc(k2,fs); 
[k3, fs] = audioread('K3.wav');
vk3 = mfcc(k3,fs); 

[v1, fs] = audioread('V1.wav');
vv1 = mfcc(v1,fs);            % Compute MFCCs
code{2} = vqCodeBook(vv1, k);      % Train VQ codebook

[s1, fs] = audioread('S1.wav');
vs1 = mfcc(s1,fs);            % Compute MFCCs
code{3} = vqCodeBook(vs1, k);      % Train VQ codebook


[v2, fs] = audioread('V2.wav');
vv2 = mfcc(v2,fs);   
[v3, fs] = audioread('V3.wav');
vv3 = mfcc(v3,fs);   




