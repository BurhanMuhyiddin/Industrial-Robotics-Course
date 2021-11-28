clc; clear all; close all;

mdl_puma560;

C = transl(transl(p560.fkine(qn)));

R = 0.2; % radius of the circle

tf = 20.0; % simulation time
sim('task1_2',tf);

% get robot manipulability
m = p560.maniplty(ans.q_final.Data, 'trans');
r =  p560.maniplty(ans.q_final.Data, 'rot');

figure

subplot(2,1,1); plot([0:100]', m);
subplot(2,1,2); plot([0:100]', r)