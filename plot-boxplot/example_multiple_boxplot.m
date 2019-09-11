clear;clc;

% Create example data
A=rand(100,3);
B=rand(200,3);
C=rand(150,3);

source_folder_name = 'mdnc2019/data/';
file_filters = 'epigenomics_1000';
algo_name = '_level_ensgaiii_archive.csv';

ensga_iii_file = source_folder_name + file_filters + algo_name;

MDNC = csvread(ensga_iii_file);

% prepare data
data=cell(3,3);

for co=1:size(data,1)
    Ac{co}=A(:,co);
    Bc{co}=B(:,co);
    MDNC{co}=MDNC(:,co);
end

data=vertcat(Ac,Bc,Cc);

xlab={'Cost','Makespan','DataMovement'};

col=[102,255,255, 200;
51,153,255, 200;
0, 0, 255, 200];

col=col/255;

multiple_boxplot(data',xlab,{'O-DAG', 'P2P-DAG', 'MDNC-DAG'},col')
title('Epigenomics-1000 tasks')