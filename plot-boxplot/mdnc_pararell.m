clc;
clear;
close all;

clc;
clear;
close all;

file_filters = ...
[
%"cybershake_1000";
%"epigenomics_1000";
%"ligo_1000";
"montage_1000";
%"sipht_1000";
];

source_folder_name = 'mdnc2019/data/';

for n = 1 : length(file_filters)    
    none_file = source_folder_name + file_filters(n) + '_none_ensgaiii_archive.csv';
    p2p_file = source_folder_name + file_filters(n) + '_p2p_ensgaiii_archive.csv';
    mdnc_file = source_folder_name + file_filters(n) + '_level_ensgaiii_archive.csv';
        
    NONE = csvread(none_file);
    P2P = csvread(p2p_file);
    MDNC = csvread(mdnc_file);    
    
    lnone = cell(size(NONE,1),1);
    lnone(:,1) = {'O-DAG'};
    lp2p = cell(size(P2P,1),1);
    lp2p(:,1) = {'P2P-DAG'};
    lmdnc = cell(size(MDNC,1),1);
    lmdnc(:,1) = {'MDNC-DAG'};    
    
    meas = [NONE;P2P;MDNC];
    groups = [lnone;lp2p;lmdnc];    
    
    %meas = [NONE;MDNC];
    %groups = [lnone;lmdnc];
    
    labels = {'Cost','Makespan','Data Movement'};
    
    p=figure(1);
    %set(p,'DefaultAxesColorOrder',[0 0.4470 0.7410;0.9290 0.6940 0.1250]);
    set(p,'DefaultAxesColorOrder',[0 0.4470 0.7410;0.4660 0.6740 0.1880;0.9290 0.6940 0.1250]);
    
    %parallelcoords(meas,'Group',groups,'Labels',labels,'LineWidth',1);
    
    parallelcoords(meas,'group',groups,'labels',labels,'quantile',.25,'LineWidth',2);
    title('Montage-1000 tasks')
    
end 

% opts.DataRange = '2:4';
% meas = readmatrix('mdnc2019/data/epigenomics_1000_parallelplot.csv',opts);
% meas = readmatrix('mdnc2019/data/epigenomics_1000.xlsx');

% opts.DataRange = '1:1';
% groups = readmatrix('mdnc2019/data/epigenomics_1000_parallelplot.csv',opts);

% test = 'mdnc2019/data/epigenomics_1000_level_ensgaiii_archive.csv';
% file = 'mdnc2019/data/epigenomics_1000_parallelplot.csv';

% matrix = csvread(file);

% labels = {'Cost','Makespan','Data Movement'};

% parallelcoords(meas,'Group',groups,'Labels',labels);
