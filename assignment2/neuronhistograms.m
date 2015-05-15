function histogram
%
% 
% 
%

load 'data.mat'


figure
histogram(neuron1, 10000)
title('Histogram of Neuron1 Spikes')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label

figure
histogram(neuron2, 10000)
title('Histogram of Neuron2 Spikes')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label

figure
histogram(neuron3, 10000)
title('Histogram of Neuron3 Spikes')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label

figure
histogram(neuron4, 10000)
title('Histogram of Neuron4 Spikes')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label
 
printing = 'done'


