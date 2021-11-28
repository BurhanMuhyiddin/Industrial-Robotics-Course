clc; clear all; close all;

mdl_puma560

% Compute straight segment on the task space
% using ctraj (cartesian trajectory)

% % Define intial and final poses in the workspace
T1 = SE3(0.5, 0.3, 0.44) * SE3.Ry(pi/2);
T2 = SE3(0.5, -0.3, 0.44) * SE3.Ry(pi/2);

% Time to finish the trajectory
t = [0:0.05:2]';

% Create the trajectory in cartesian space
Xw = ctraj(T1, T2, length(t));

% Find the joints by using inverse kinematics
q = p560.ikine6s(Xw);

% Get the x, y, z coordinates of the trajctory in order to plot it
p = Xw.transl;

% Plot the trajectory and animate the robot
f1 = figure;
title('Straight line trajectory')
plot3(p(:, 1), p(:, 2), p(:, 3));
p560.plot(q);

% Plot joint coordinates versus time
f2 = figure;
qplot(t, q);

% get robot manipulability
m = p560.maniplty(q);

figure
plot(t, m);