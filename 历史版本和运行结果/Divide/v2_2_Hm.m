TracebackDepth = 64;
SamplesPerFrame = 200;
Rows = 100;
Cols = 2*SamplesPerFrame/Rows;
EbN0_Set = -1:1:10;
% BER_2_Hardd= [];
BER_2_Softt= [];
for EbN0 = EbN0_Set
    sim('v2_2_S')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_2_Softt = [BER_2_Softt BER_2_Soft(1)]
    EbN0
end
figure
% plot(EbN0_Set, BER_2_Hardd,'+','color','r');
hold on
plot(EbN0_Set, BER_2_Softt,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')