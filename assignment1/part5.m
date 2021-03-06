function integrateandfiremodel
%
% part 5 of the neuron model
%

Tm = 10;             %[ms] (i.e. ?m is the time constant of the membrane)
EL = -70;            %[mV]
Vreset = -70;        %[mV]
Vth = -40;           %[mV]
Rm = 10;             %[M?]
Ie = 3.1;            %[nA]

Vzero = -70;

Dt = 1; %ms
t = 0;


% Gk*(Ek - V)
% Tk*(dG/dt)
dG = 0.01;          %[Mohm]
dt = 1;             %[ms]
Ek = -80;           %[mV]
Gk = 0;
Tslow = 200;

for timer=1:1000,
    
    Vtemp = EL + Rm * Ie + (Vzero - EL - Rm * Ie) * exp(-t/Tm);
    V(timer) = Vtemp + Gk * (Ek - Vtemp);
    if V(timer) >= Vth
        V(timer) = Vreset;
        t = 0;
        Gk = Gk + dG;
    end
    
    % relative time
    t = t + Dt;
    Gk = Gk - Gk * (dt/Tslow);
end
plottime = 0:999;
plot(plottime, V)
title('voltage of a neuron against time')
xlabel('Time (ms)') % x-axis label
ylabel('Voltage (mV)') % y-axis label
