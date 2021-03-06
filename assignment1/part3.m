function integrateandfiremodel
%
% part 3 of the neuron model
% 
%
%?m = 10 [ms] (i.e. ?m is the time constant of the membrane)
%EL = Vreset = -70 [mV]
%Vth = -40 [mV]
%Rm = 10 [M?]
%Ie = 3.1 [nA]

Tm = 10;             %[ms] (i.e. ?m is the time constant of the membrane)
EL = -70;            %[mV]
Vreset = -70;        %[mV]
Vth = -40;           %[mV]
Rm = 10;             %[M?]
Ie = 3.1;            %[nA]

Vzero = -70;

Dt = 1; %ms
t = 0;


V = zeros(1000,1);

countspikes = zeros(31,1);

counter = 1;

for Ie=2:0.1:5,
    t = 0;
    for time=1:1000,

        V(time) = EL + Rm * Ie + (Vzero - EL - Rm * Ie) * exp(1) ^ (-t/Tm);
        
        % relative time
        t = t + Dt;
        
        if V(time) >= Vth
            V(time) = Vreset;
            t = 0;
            countspikes(counter) = countspikes(counter) + 1;
        end


    end
    counter = counter + 1;
end
plotie = 2:0.1:5;
plot(plotie, countspikes)
title('spike frequency for various Ie values')
xlabel('Time (ms)') % x-axis label
ylabel('Voltage (mV)') % y-axis label
