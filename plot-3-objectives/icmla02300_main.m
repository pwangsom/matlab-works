clc;
clear;
close all;

file_filters = ...
[
"cybershake_50";
"epigenomics_50";
"ligo_50";
"montage_50";
"sipht_50";
"cybershake_100";
"epigenomics_100";
"ligo_100";
"montage_100";
"sipht_100";
"cybershake_500";
"epigenomics_500";
"ligo_500";
"montage_500";
"sipht_500";
"cybershake_800";
"epigenomics_800";
"ligo_800";
"montage_800";
"sipht_800";
"cybershake_1000";
"epigenomics_1000";
"ligo_1000";
"montage_1000";
"sipht_1000";
];

source_folder_name = 'icmla02300/out/';
dest_folder_name = 'icmla02300/pics/';

for n = 1 : length(file_filters)
        
    disp(file_filters(n));
    
    nsga_ii_file = source_folder_name + file_filters(n) + '_none_nsgaii.out';
    nsga_iii_file = source_folder_name + file_filters(n) + '_none_nsgaiii.out';
    ensga_iii_file = source_folder_name + file_filters(n) + '_none_ensgaiii.out';
    
    NSGA_II = csvread(nsga_ii_file);
    NSGA_III = csvread(nsga_iii_file);
    E_NSGA_III = csvread(ensga_iii_file);

    NSGA_II = AddSizeColorColumn(NSGA_II, 'green');
    NSGA_III = AddSizeColorColumn(NSGA_III, 'blue');
    E_NSGA_III = AddSizeColorColumn(E_NSGA_III, 'red');

    set = [NSGA_II; NSGA_III; E_NSGA_III];
    
    PlotSaveThreeObjectives(set, dest_folder_name, file_filters(n));   
    
    close all;
    
end    
