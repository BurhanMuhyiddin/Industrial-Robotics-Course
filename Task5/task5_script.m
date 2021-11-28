clc; clear all; close all;

mdl_puma560; % import puma model

tf = 10.0; % 5 seconds simulation time

% Define gains
Kp = 100;
Kd = 50;

sim('task5', tf);

open_system('task5/result');