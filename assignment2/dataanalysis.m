function integrateandfiremodel
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




% figure
% for i=1:countersize(2),
%     
%     if ismember(testingtime(i), testingneuron1)
%         plot(x(i),y(i),'.r')
%     end
%     if ismember(testingtime(i), testingneuron2)
%         plot(x(i),y(i),'.g')
%     end
%     if ismember(testingtime(i), testingneuron3)
%         plot(x(i),y(i),'.b')
%     end
%     if ismember(testingtime(i), testingneuron4)
%         plot(x(i),y(i),'.y')
%     end
% end
% printing = 'done'

% printing = 0;
% 
% countersize = (max(time) - min(time))/100;
% counttime = 1;
% 
% figure
% for i=min(time):max(time),
%     if i >= time(counttime)
%         plot3(x(counttime),y(counttime),time(counttime),'.g')
%         counttime = counttime + 1;
%     end
% end


testingtime = transpose(time);
countersize = size(time);

printing = 0;


neuron1position = zeros(countersize(1),1);
neuron1cutoff = size(neuron1);
counttime1 = 1;

counttime = 1;

figure
hold on
for i = testingtime
    if counttime1 <= neuron1cutoff(1)
        if i >= neuron1(counttime1)
            neuron1position(counttime) = 1;
            counttime1 = counttime1 + 1;
            plot3(x(counttime),y(counttime),time(counttime),'.g')
        else
            neuron1position(counttime) = 0;
        end
    end
    

    
    
    
    counttime = counttime + 1;
end


plot3(x,y,time,'b')


