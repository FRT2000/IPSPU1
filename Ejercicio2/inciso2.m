delta = [1 1;zeros(348380,2)];

y2 = sistema(delta);

y2(1);
y2(8821);
y2(17641);

n = (0:1:348380);

stem(n,y2,'o');
xlabel('n');
ylabel('y[n]');
