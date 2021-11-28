clc; clear all; close all;

% takes approximately 1 minutes to get results

mdl_puma560; % import puma model

tf = 5.0; % 5 seconds simulation time

% Define gains
Kp = 100;
Kd = 50;

sim('task6', tf);

open_system('task6/Position error');
open_system('task6/Orientation error');