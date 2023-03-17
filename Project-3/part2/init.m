clear all
close all
clc
vrclear
vrclose

load('generated_traj.mat');
control;
sim('control.mdl', t);

visualize_result
