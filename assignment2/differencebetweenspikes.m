function differencebetweenspikes
%
% 
% 
%

load 'data.mat'


pastneuron = [0; neuron1];
currentneuron = [neuron1; 0]; %formating so that matrices are the same size

differenceneuron = currentneuron - pastneuron;

fixdifferenceneuron = differenceneuron(1:end-1); % remove formating number
fixdifferenceneuron(1) = 0; % 0 first value (difference between itself)

plot(fixdifferenceneuron)

title('Spike Time Difference of Neuron4')
xlabel('spike number') % x-axis label
ylabel('difference between spikes (1/10000 seconds)') % y-axis label


 
printing = 'done'


