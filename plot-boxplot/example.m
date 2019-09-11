% Data

x = ['Cost', 'Makespan', 'DataMovement'];
y = randn(3, 3, 100);

% Plot boxplots

h = boxplot2(y,x);

% Alter linestyle and color

cmap = get(0, 'defaultaxescolororder');
for ii = 1:3
    structfun(@(x) set(x(ii,:), 'color', cmap(ii,:), ...
        'markeredgecolor', cmap(ii,:)), h);
end
set([h.lwhis h.uwhis], 'linestyle', '-');
set(h.out, 'marker', '.');