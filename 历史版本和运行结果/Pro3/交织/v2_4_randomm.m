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
range = 200:400:8000;
% SamplesPerFrame = 60000;
% Col = myfun(2*SamplesPerFrame);  %Decomposition factor
% Col = Col(find(Col>1));
% Col = Col(find(Col<SamplesPerFrame));
% Col = Col';
peak = 20;
SamplesPerFrame = 200;
sim('v2_4_random')
peak = 5*max(Data);
BER_4_ran = [];
% Row = [];
for SamplesPerFrame = range
    sim('v2_4_random')
    BER_4_ran = [BER_4_ran BER_4_ra(1)]
%     Row = [Row Rows]
end
figure
plot(range, BER_4_ran,'<','color','r');
% hold on
% figure
% plot(ebno0,ber0,'*','color','b');
xlabel('Num of Rows')
ylabel('BER')
grid on
set(gca,'YScale','log')