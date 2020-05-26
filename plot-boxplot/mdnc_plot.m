clc;
clear;
close all;

file_filters = ...
[
%"cybershake_1000";
%"epigenomics_1000";
%"ligo_1000";
%"montage_1000";
%"sipht_1000";

%"epigenomics_50";
%"epigenomics_100";
%"epigenomics_500";
%"epigenomics_800";
%"epigenomics_1000";

%"ligo_50";
%"ligo_100";
%"ligo_500";
%"ligo_800";
%"ligo_1000";

%"montage_50";
%"montage_100";
%"montage_500";
%"montage_800";
%"montage_1000";

%"cybershake_50";
%"cybershake_100";
%"cybershake_500";
%"cybershake_800";
%"cybershake_1000";

%"sipht_50";
%"sipht_100";
%"sipht_500";
%"sipht_800";
"sipht_1000";

];

source_folder_name = 'mdnc2019/data/';
fi_name = 'SIPHT 1000 tasks';

for n = 1 : length(file_filters)    
    none_file = source_folder_name + file_filters(n) + '_none_ensgaiii_archive.csv';
    %p2p_file = source_folder_name + file_filters(n) + '_p2p_ensgaiii_archive.csv';
    mdnc_file = source_folder_name + file_filters(n) + '_level_ensgaiii_archive.csv';
        
    NONE = csvread(none_file);
    %P2P = csvread(p2p_file);
    MDNC = csvread(mdnc_file);
    
    % prepare data
    %data=cell(3,3);
    data=cell(3,2);

    for co=1:size(data,1)
        Ac{co}=NONE(:,co);
        %Bc{co}=P2P(:,co);
        Cc{co}=MDNC(:,co);
    end

    %data = vertcat(Ac,Bc,Cc);
    data = vertcat(Ac,Cc);

    xlab = {'Cost','Makespan','Data Movement'};

    col=[102,255,255, 200;
         %51,153,255, 200;
         0, 0, 255,  200];
         

    col=col/255;

    %multiple_boxplot(data',xlab,{'O-DAG', 'P2P-DAG', 'MDNC-DAG'},col')
    multiple_boxplot(data',xlab,{'O-DAG', 'MDNC-DAG'},col')
    
    title(fi_name);
    
end 


% https://ww2.mathworks.cn/help/stats/parallelcoords.html