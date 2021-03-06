clc;
clear;
close all;

% Data

mlab = {'O-DAG', 'P2P-DAG', 'MDNC-DAG'};

x = 1:3;
y = randn(3, 3, 10);

% Plot boxplots

h = boxplot2(y,x);

% Alter linestyle and color

cmap = get(0, 'defaultaxescolororder');
for ii = 1:3
    structfun(@(x) set(x(ii,:), 'color', cmap(ii,:), ...
        'markeredgecolor', cmap(ii,:)), h);
end
set([h.lwhis h.uwhis], 'linestyle', '-');
set(h.out, 'marker', '+');

xticks([1 2 3])
set(gca, 'xticklabel', {'Cost','Makespan','Data Movement'});

legend(mlab);
