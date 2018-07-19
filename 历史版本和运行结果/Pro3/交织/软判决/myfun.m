function y=myfun(n)
y1=[];
for i=1:fix(n/2)
    if mod(n,i)==0
        y1=[y1;i;n/i];
    end
end
y=(unique(y1))';