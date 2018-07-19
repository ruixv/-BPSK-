TracebackDepth = 64;
SamplesPerFrame = 2000;
Rows = 1000;
Cols = 2*SamplesPerFrame/Rows;
EbN0_Set = 0:4:28;
% BER_2_Hardd= [];
BER_3_10= [];
BER_3_00= [];
for EbN0 = EbN0_Set
    sim('v2_3_1')
%     BER_2_Hardd = [BER_2_Hardd BER_2_Hard(1)]
    BER_3_10 = [BER_3_10 BER_3_1(1)];
    BER_3_00 = [BER_3_00 BER_3_0(1)];
    EbN0
end
figure
plot(EbN0_Set, BER_3_10,'*','color','r');
hold on
plot(EbN0_Set, BER_3_00,'*','color','b');
xlabel('Eb/N0(dB)')
ylabel('BER')
grid on
set(gca,'YScale','log')