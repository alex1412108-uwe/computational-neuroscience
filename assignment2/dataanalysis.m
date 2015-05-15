function spikepositions
%
% 
% 
%

load 'data.mat'


% plot(x,y)
% 
% figure
% plot3(x,y,time)
% title('rat positions against time')
% xlabel('x position') % x-axis label
% ylabel('y position') % y-axis label
% zlabel('Time (ms)') % z-axis label

% figure
% hold on
% plot(neuron1,1)
% plot(neuron2,2)
% plot(neuron3,3)
% plot(neuron4,4)
% legend('neuron 1','neuron 2','neuron 3','neuron 4')


testingtime = transpose(time);
countersize = size(time);

printing = 0;


%neuron1position = zeros(countersize(1),1);

neuron1cutoff = size(neuron1);
counttime1 = 1;
neuron2cutoff = size(neuron2);
counttime2 = 1;
neuron3cutoff = size(neuron3);
counttime3 = 1;
neuron4cutoff = size(neuron4);
counttime4 = 1;

counttime = 1;

figure
hold on
for i = testingtime
    if counttime1 <= neuron1cutoff(1)
        if i >= neuron1(counttime1)
            counttime1 = counttime1 + 1;
            dot1 = plot3(x(counttime),y(counttime),time(counttime),'.r');
        end
    end
    
    if counttime2 <= neuron2cutoff(1)
        if i >= neuron2(counttime2)
            counttime2 = counttime2 + 1;
            dot2 = plot3(x(counttime),y(counttime),time(counttime),'.g');
        end
    end
    
    if counttime3 <= neuron3cutoff(1)
        if i >= neuron3(counttime3)
            counttime3 = counttime3 + 1;
            dot3 = plot3(x(counttime),y(counttime),time(counttime),'.b');
        end
    end
    
    if counttime4 <= neuron4cutoff(1)
        if i >= neuron4(counttime4)
            counttime4 = counttime4 + 1;
            dot4 = plot3(x(counttime),y(counttime),time(counttime),'.y');
        end
    end
    
    counttime = counttime + 1;
end

title('Position of Neuron Spikes')
xlabel('x position') % x-axis label
ylabel('y position') % y-axis label
zlabel('Time (1/10000 seconds)') % z-axis label
legend([dot1, dot2, dot3, dot4],'neuron 1','neuron 2','neuron 3','neuron 4', 'Location', 'southwest') 
%[h,icons,plots,str] = legend('neuron 1','neuron 2','neuron 3','neuron 4') %shows data about legend


dot5 = plot3(x,y,time,'k');

legend([dot1, dot2, dot3, dot4, dot5],'neuron 1','neuron 2','neuron 3','neuron 4','position', 'Location', 'southwest') 
printing = 'done'


