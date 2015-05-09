function integrateandfiremodel
%
% part 4 of the neuron model
%


Tm = 20;             %[ms] (i.e. ?m is the time constant of the membrane)
EL = -70;            %[mV]
Vreset = -80;        %[mV]
Vth = -54;           %[mV]
RmIe = 18;           %[mV]

RmGs = 0.15;         %
Pmax = 0.5;
Ts = 10;             %[ms]
Dt = 1;              %[ms]


Vzero = Vreset;

V = zeros(2,1000);


% Vstart = randi([Vreset Vth],2,1)
Vstart = randi([Vreset Vth],2,1);
t = log((Vstart - EL - RmIe)/(Vzero - EL - RmIe)) * Tm * -1;


%syncon = Gs * Pmax * exp(-t/Ts)
%Is(timer) = GsS(timer) * (Es - V)
%s(timer) = t * exp(-t/Ts)
%synapse(neuron) = RmGs * Pmax * exp(-t/Ts);

for timer = 1:1000,
    for neuron = 1:2,
        V(neuron,timer) = EL + RmIe + (Vzero - EL - RmIe) * exp(-t(neuron)/Tm);
        if V(neuron,timer) >= Vth
            V(neuron,timer) = Vreset;
            t(neuron) = 0;
        end

        % relative time
        t(neuron) = t(neuron) + Dt;
    end
end
plottime = 0:999;
plot(plottime, V)
title('voltage of a neuron')
xlabel('Time (ms)') % x-axis label
ylabel('Voltage (mV)') % y-axis label
legend('neuron 1','neuron 2')