function differencebetweenspikes
%
% 
% 
%

load 'data.mat'

pastneuron = [0; neuron1];
currentneuron = [neuron1; 0]; %formating so that matrices are the same size

differenceneuron = currentneuron - pastneuron;

fixdifferenceneuron = differenceneuron(1:end-1);
fixdifferenceneuron(1) = 0;

plot(fixdifferenceneuron)

title('Spike Time Difference of Neuron1')
xlabel('spikes') % x-axis label
ylabel('difference between spikes') % y-axis label


 
printing = 'done'


