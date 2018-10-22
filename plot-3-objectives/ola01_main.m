clc;
clear;
close all;

file_filters = ...
[
"250_01";
"500_01";
"750_01";
"1000_01";
"250_all";
"500_all";
"750_all";
"1000_all";
];

source_folder_name = 'ola01/out/';
dest_folder_name = 'ola01/pics/';

for n = 1 : length(file_filters)
        
    disp(file_filters(n));
    
    nsga_ii_file = source_folder_name + file_filters(n) + '_runALL_nsgaii.out';
    nsga_iii_file = source_folder_name + file_filters(n) + '_runALL_nsgaiii.out';
    ensga_iii_file = source_folder_name + file_filters(n) + '_runALL_ensgaiii.out';
    
    NSGA_II = csvread(nsga_ii_file);
    NSGA_III = csvread(nsga_iii_file);
    E_NSGA_III = csvread(ensga_iii_file);

    NSGA_II = AddSizeColorColumn(NSGA_II, 'green');
    NSGA_III = AddSizeColorColumn(NSGA_III, 'blue');
    E_NSGA_III = AddSizeColorColumn(E_NSGA_III, 'red');

    set = [NSGA_II; NSGA_III; E_NSGA_III];
    
    PlotSaveThreeObjectivesWithNames(set, dest_folder_name, file_filters(n), 'Objective1', 'Objective2', 'Objective3');   
    
    close all;
    
end    