% Depth =rows*10^(-5)s>> Tc=0.4223/fm=4.23ms
% 	rows>>423;
% 
% Width>Tracebackdepth
% 	Cols>64;
% 
% bitsPerFrame>27000
EbN0 = 7;
Ploy = [561 753];
% Ploy = [753 561];
% Ploy = [561 756 561];
TracebackDepth = 64;
SamplesPerFrame = 60000;
Col = myfun(2*SamplesPerFrame);  %Decomposition factor
Col = Col(find(Col>1));
Col = Col(find(Col<SamplesPerFrame));
% Col = Col';
BER_4_a0C = [];
Row = [];
for Cols = Col
    Rows = 2*SamplesPerFrame/Cols;
    sim('v2_4_sameEbN0Copy')
    BER_4_a0C = [BER_4_a0C BER_4_0C(1)]
    Row = [Row Rows]
end
figure
plot(Row, BER_4_a0C,'<','color','r');
hold on
figure
plot(ebno0,ber0,'*','color','b');
xlabel('Num of Rows')
ylabel('BER')
grid on
set(gca,'YScale','log')