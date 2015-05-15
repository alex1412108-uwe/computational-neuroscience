function differencebetweenspikes
%
% 
% 
%

load 'data.mat'


pastspiketime = neuron1(1);
sizeofneuron = size(neuron1);
differenceinspikes = zeros(sizeofneuron(1)+1);

count = 1;
for i = neuron1
    differenceinspikes(count) = neuron1
    count = count + 1;
end

figure

title('Spike Time difference of Neuron1')
xlabel('time (1/10000 seconds)') % x-axis label
ylabel('number of spikes') % y-axis label


 
printing = 'done'


