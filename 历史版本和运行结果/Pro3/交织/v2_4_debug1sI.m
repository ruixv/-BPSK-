% Depth =rows*10^(-5)s>> Tc=0.4223/fm=4.23ms
% 	rows>>423;
% 
% Width>Tracebackdepth
% 	Cols>64;
% 
% bitsPerFrame>27000
Ploy = [561 753];
% Ploy = [753 561];
% Ploy = [561 756 561];
TracebackDepth = 64;
Cols = 124;
Rows = 3504;
SamplesPerFrame = Cols*Rows/2;
EbN0_Set = [0,2,4,5,6,7,8];
% BER_2_Hardd= [];
BER_4_d10 = [];
% BER_3_00= [];
EbN0 = 6;
peak = 0.001;
sim('v2_4_debug2')
peak = 1.5*max(max(Data),abs(min(Data)))
BER_4_d20 = [];
for EbN0 = EbN0_Set
    sim('v2_4_debug2')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_4_d20 = [BER_4_d20 BER_4_d2(1)]
%     BER_3_00 = [BER_3_00 BER_3_0(1)];
    EbN0
end
figure
plot(EbN0_Set, BER_4_d20,'*','color','b');
hold on
% plot(EbN0_Set, BER_3_00,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')