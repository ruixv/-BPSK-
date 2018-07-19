TracebackDepth = 64;
Cols = 124;
Rows = 3504;
SamplesPerFrame = Cols*Rows/2;
EbN0_Set = [-1,0,1,2,3,3.5,4,4.5];
peak = 5;
sim('v2_2_S5')
peak = 1.5*max(Data)
% BER_2_Hardd= [];
BER_2_Softt5= [];
for EbN0 = EbN0_Set
    sim('v2_2_S5')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_2_Softt5 = [BER_2_Softt5 BER_2_Soft5(1)]
    EbN0
end
figure
% plot(EbN0_Set, BER_2_Hardd,'+','color','r');
hold on
plot(EbN0_Set, BER_2_Softt5,'+','color','r');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')