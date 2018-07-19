EbN0 = 6;
Ploy = [561 753];
TracebackDepth = 64;
% SamplesPerFrame = 20000;
% Col = 64:2:300;  %Decomposition factor
% Row = 500:5:2000;
[Col Row] = meshgrid(30:5:80,500:50:1000);
[m,n] = size(Col);
BER_4_a3D = zeros(m,n);
% Row = [];
for  im = 1:1:m*n
   Cols = Col(im);
   Rows = Row(im);
   SamplesPerFrame = Cols*Rows/2;
   sim('v2_4_sameEbN0')
   BER_4_a3D(im) = BER_4_0(1);
   BER_4_a3D(im)
   im
end
CO(:,:,1) = ones(11).*linspace(0.5,1,11); % red
CO(:,:,2) = ones(11).*linspace(0,05,11); % green
CO(:,:,3) = ones(11).*linspace(0.3,0.8,11); % blue
figure
surf(Col,Row,BER_4_a3D,CO)
% hold on
% plot(EbN0_Set, BER_3_00,'*','color','b');
xlabel('Cols')
ylabel('Rows')
grid on
set(gca,'ZScale','log')