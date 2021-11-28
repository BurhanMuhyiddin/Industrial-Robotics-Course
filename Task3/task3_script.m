clc; clear all; close all;

MyPumaCreation
mdl_puma560
p560_nf = p560.nofriction();

Kp = 100;
Kd = 5;

D = [zeros(6); eye(6)];
ro = 500;
Q = 0.05 * eye(12);

tf = 7.0; % simulation time
sim('task3_fin', tf);

open_system('task3_fin/get_y/Error')