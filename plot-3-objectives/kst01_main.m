clc;
clear;
close all;

file_filters = ...
[
"epigenomics_50";
"ligo_50";
"montage_50";
"epigenomics_100";
"ligo_100";
"montage_100";
"epigenomics_500";
"ligo_500";
"montage_500";
"epigenomics_800";
"ligo_800";
"montage_800";
"epigenomics_1000";
"ligo_1000";
"montage_1000";
];

source_folder_name = 'kst01/out/';
dest_folder_name = 'kst01/pics/';

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
