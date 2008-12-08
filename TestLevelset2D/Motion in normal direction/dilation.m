
addpath('..');
init;

% Propagate
time = 1;
for i = 1:20
    tic; [LS,iter] = propagate(LS,time,'speed_normal',1); toc
    tic; LS = reinitialize(LS); toc
    figure(100);
    clf;
    plot(LS, 'contour', 'phi', 'gradient 5');
    drawnow;
end

rmpath('..');