clc;
clear;
close all;

file_filters = ...
[
"250_13";
"500_09";
"750_04";
"1000_08";
];

source_folder_name = 'ola05/out/';
dest_folder_name = 'ola05/jsci6_pics/';

for n = 1 : length(file_filters)
        
    disp(file_filters(n));
    
    nsga_ii_file = source_folder_name + file_filters(n) + '_binary_nsgaii.out';
    nsga_iii_file = source_folder_name + file_filters(n) + '_binary_nsgaiii.out';
    
    NSGA_II = csvread(nsga_ii_file);
    NSGA_III = csvread(nsga_iii_file);

    NSGA_II = AddSizeColorColumn(NSGA_II, 'blue');
    NSGA_III = AddSizeColorColumn(NSGA_III, 'red');

    set = [NSGA_II; NSGA_III];
    
    PlotSaveThreeObjectivesWithNames(set, dest_folder_name, file_filters(n), 'Objective1', 'Objective2', 'Objective3');   
    
    close all;
    
end    