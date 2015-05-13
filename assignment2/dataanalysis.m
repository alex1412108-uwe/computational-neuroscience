function integrateandfiremodel
%
% 
% 
%

load 'data.mat'


plot(x,y)

figure
plot3(x,y,time)
title('rat positions against time')
xlabel('x position') % x-axis label
ylabel('y position') % y-axis label
zlabel('Time (ms)') % z-axis label

% figure
% hold on
% plot(neuron1,1)
% plot(neuron2,2)
% plot(neuron3,3)
% plot(neuron4,4)
% legend('neuron 1','neuron 2','neuron 3','neuron 4')

figure
for i=time
    if 
end