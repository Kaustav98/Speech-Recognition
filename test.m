


% Speaker Recognition: Testing Stage
%
% Input:
%       testdir : string name of directory contains all test sound files
%       n       : number of test files in testdir
%       code    : codebooks of all trained speakers
%
% Note:
%       Sound files in testdir is supposed to be: 
%               s1.wav, s2.wav, ..., sn.wav
%
% Example:
%       >> test('C:\data\test\', 8, code); %'
                      % read test sound file of each speaker
    [k1, fs] = audioread('K3.wav');      
        
    vk1 = mfcc(k1, fs);            % Compute MFCCs  
   
    distmin = inf;
    s = 0;
   
    for l = 1:length(code)      % each trained codebook, compute distortion
        d = distance(vk1, code{l}); 
        dist = sum(min(d,[],2)) / size(d,1);
      
        if dist < distmin
            distmin = dist;
            s = l;
        end      
    end
   
msg = sprintf('Speaker %d matches with speaker %d', s);
disp(msg);











%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%








    
    
  