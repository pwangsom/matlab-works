clc;
clear;
close all;

load fisheriris

labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};

parallelcoords(meas,'Group',species,'Labels',labels)
