function integrateandfiremodel
%
% part 2b of the neuron model
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

Ie = 2.9;

V = zeros(1000,1);


for time=1:1000,

    V(time) = EL + Rm * Ie + (Vzero - EL - Rm * Ie) * exp(-t/Tm);
    if V(time) >= Vth
        V(time) = Vreset;
        t = 0;
    end

    % relative time
    t = t + Dt;


end
plot(V)
title('voltage when Ie is 0.1 less than minumum required current to reach Vth')
xlabel('Time (ms)') % x-axis label
ylabel('Voltage (mV)') % y-axis label