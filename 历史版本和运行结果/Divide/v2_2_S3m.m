% autor: 2015010912014
% Mobile Communication Homework
% Set initial parameters. The meaning of them is illustrated in Table 4-1
TracebackDepth = 64;    
SamplesPerFrame = 2000;
Rows = 100;
Cols = 2*SamplesPerFrame/Rows;
% EbN0 Set
EbN0_Set = -1:1:10;
% BER Set
BER_2_Softt1= [];
for EbN0 = EbN0_Set
    sim('v2_2_S1')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_2_Softt1 = [BER_2_Softt1 BER_2_Soft1(1)]
    EbN0
end
figure
% plot(EbN0_Set, BER_2_Hardd,'+','color','r');
% hold on
plot(EbN0_Set, BER_2_Softt1,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')