TracebackDepth = 64;
SamplesPerFrame = 2000;
Rows = 500;
Cols = 2*SamplesPerFrame/Rows;
EbN0_Set = -1:1:10;
peak = 5;
sim('v2_2_S')
peak = 5*max(max(Data),abs(min(Data)))
% BER_2_Hardd= [];
BER_2_Softt= [];
for EbNo = EbN0_Set
    sim('v2_2_S')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_2_Softt = [BER_2_Softt BER_2_Soft(1)]
    EbNo
end
figure
% plot(EbN0_Set, BER_2_Hardd,'+','color','r');
hold on
plot(EbN0_Set, BER_2_Softt,'+','color','r');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')