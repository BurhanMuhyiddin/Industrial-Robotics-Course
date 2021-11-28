clc; clear all; close all;

mdl_puma560;
%MyPumaCreation;
p560Unc = p560()

%p_robot = p560.perturb(0.1);

Kp = 100;
Kd = 50;

tf = 7.0;

sim('task4',tf);
open_system('task4/get_y/Error');