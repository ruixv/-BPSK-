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
SamplesPerFrame = 3504*124;
EbN0_Set = 0:2:12;
% BER_2_Hardd= [];
BER_4_d10 = [];
% BER_3_00= [];
EbN0 = 6;
% peak = 0.001;
% % sim('v2_4_random')
peak = 200;
BER_4_ran2 = [];
for EbN0 = EbN0_Set
    sim('v2_4_random')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_4_ran2 = [BER_4_ran2 BER_4_ra(1)]
%     BER_3_00 = [BER_3_00 BER_3_0(1)];
    EbN0
end
figure
plot(EbN0_Set, BER_4_ran2,'*','color','b');
hold on
% plot(EbN0_Set, BER_3_00,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')