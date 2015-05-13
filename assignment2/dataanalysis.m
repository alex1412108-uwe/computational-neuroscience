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


testingneuron1=floor(neuron1/1000);
testingneuron2=floor(neuron2/1000);
testingneuron3=floor(neuron3/1000);
testingneuron4=floor(neuron4/1000);

testingtime=transpose(floor(time/1000));

printing = 0;

countersize = size(testingtime);

countersize(2);

figure
for i=1:countersize(2),
    
    if ismember(testingtime(i), testingneuron1)
        plot(x(i),y(i),'.r')
    end
    if ismember(testingtime(i), testingneuron2)
        plot(x(i),y(i),'.g')
    end
    if ismember(testingtime(i), testingneuron3)
        plot(x(i),y(i),'.b')
    end
    if ismember(testingtime(i), testingneuron4)
        plot(x(i),y(i),'.y')
    end
end
printing = 'done'