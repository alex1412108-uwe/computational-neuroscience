function integrateandfiremodel
%
% part 2 of the neuron model
% answer returned is 3.0000
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

Ie = 0;

V = zeros(1000,1);

while true
    
    for time=1:1000,

        V(time) = EL + Rm * Ie + (Vzero - EL - Rm * Ie) * exp(1)^(-t/Tm);
        if V(time) >= Vth
            V(time) = Vreset;
            t = 0;
            Ie
            error('break')
        end

        % relative time
        t = t + Dt;


    end
    
    Ie = Ie + 0.0001;
end

