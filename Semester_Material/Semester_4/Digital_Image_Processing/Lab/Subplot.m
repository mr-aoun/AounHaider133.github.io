%Creating mulitple plots in a single gird system
%Creating a 2x2 grid with 4 different plots
x = linspace(0,10);
subplot(2,2,1);
plot(sin(x));
title('Subplot 1: sin(x)');

subplot(2,2,2);
plot(sin(2*x));
title('Subplot 2: sin(2x)');

subplot(2,2,3);
plot(sin(4*x));
title('Subplot 3: sin(4x)');

subplot(2,2,4);
plot(sin(8*x));
title('Subplot 4: sin(8x)');


