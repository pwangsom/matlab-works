clc;
clear;
close all;

s = [1 1 2 2 3 3 5];
t = [2 3 4 5 6 7 8];
weights = [0 0 0 0 0 0 0];
names = {'A' 'B' 'C' 'D' 'E' 'F' 'G' 'H'};
G = digraph(s,t,weights,names);


h = plot(G,'Layout','force');