clc;
clear;
close all;

file_filters = ...
[
"epigenomics_800";
];

source_folder_name = 'kst01-fix/out/';
dest_folder_name = 'kst01-fix/pics/';

for n = 1 : length(file_filters)
        
    disp(file_filters(n));
    
    none_file = source_folder_name + file_filters(n) + '_none_nsgaiii.out';
    p2p_file = source_folder_name + file_filters(n) + '_p2p_nsgaiii.out';
    
    NONE_CLUSTER = csvread(none_file);
    P2P_CLUSTER = csvread(p2p_file);

    NONE_CLUSTER = AddSizeColorColumn(NONE_CLUSTER, 'blue');
    P2P_CLUSTER = AddSizeColorColumn(P2P_CLUSTER, 'red');

    set = [NONE_CLUSTER; P2P_CLUSTER];
    
    PlotSaveThreeObjectives(set, dest_folder_name, file_filters(n));   
    
    close all;
    
end    
