function autocorrelogram
%
% 
% 
%

load 'data.mat'


% pastneuron = [0; neuron1];
% currentneuron = [neuron1; 0]; %formating so that matrices are the same size
% 
% differenceneuron = currentneuron - pastneuron;
% 
% fixdifferenceneuron = differenceneuron(1:end-1);
% fixdifferenceneuron(1) = 0;
% 
% plot(fixdifferenceneuron)
% 
% title('Spike Time Difference of Neuron4')
% xlabel('spike number') % x-axis label
% ylabel('difference between spikes (1/10000 seconds)') % y-axis label





neuron = neuron4;

sizeofneuron = size(neuron);
differencesbetweeenspikes = zeros(sizeofneuron(1) + 1, sizeofneuron(1) + 1);

for i = 1:sizeofneuron(1)
    for j = 1:sizeofneuron(1)
        
        differencesbetweeenspikes(i,j) = neuron(i) - neuron(j);
        
    end
end

histogram(differencesbetweeenspikes, 1000000)
title('Correlogram of Neuron4')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label
printing = 'done'


