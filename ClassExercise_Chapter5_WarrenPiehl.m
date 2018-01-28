%% Class Excersises Chapter 5

%Q 5.1

%a)
M = ones(6);
for i = 1:6
    for j = 1:6
        if j >= i
    M(i, j) = 2
        end
    end
end

%b)
map = [1,0,0; 0,1,0];
figure();
image(M);
axis off
axis equal
colormap(map)

%c)

N = ones(6);
for i = 1:6;
    for j = 1:6;
        if round((i + j)/2) ~= (i+j)/2;
        N(i, j) = 2;
        end
    end
end
figure1 = figure();
image(N);
axis off
axis equal
colormap(map);
disp(N)

%%5.2

%a)
Z = [1 1 1 1 1; ...
    0 0 0 0 1; ...
    0 0 0 1 0; ...
    0 0 1 0 0; ...
    0 1 0 0 0; ...
    1 0 0 0 0; ...
    1 1 1 1 1];
T = [1 1 1 1 1; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0; ...
    0 0 1 0 0];
ZT = 1 + Z + (T*2)
cmapZ = [0 0 0; 0 0 1; 0 0 0; 0 0 1];
cmapT = [0 0 0; 0 0 0; 1 .5 .5; 1 .5 .5];
image(ZT); axis off
colormap(cmapZ)
hold
figure2 = figure()
image(ZT)
colormap(cmapT)

%%5.3

%a)
M = 1:256;
image(M)
colormap(gray(256))

%b)
cmap = zeros(256,3);
nCycles = 4;
phase = pi;
for i = 1:3
    cmap(:,i) = (sin(linspace(0, 2*pi*nCycles, 256)' - phase)+1)/2;
end
colormap(cmap)

%c)
for phase = linspace(0, 8*pi, 100);
        for i = 1:3;
    cmap(:,i) = (sin(linspace(0, 2*pi*nCycles, 256)' - phase)+1)/2;
       end
       colormap(cmap)
       drawnow
end

%%5.4

ntrials = 20;
timepts = 0:0.01:2;

signal = 0.09*rand(ntrials, length(timepts));

noise = 0.8*randn(ntrials, length(timepts));

choicethreshold = 8;

for n = 1:ntrials;
    resp(n, 1) = 0;
    for t = 2:length(timepts);
        resp(n, t) = resp(n,t-1)+signal(n,t)+noise(n,t);
        if resp(n,t)>= choicethreshold;
            resp(n,t:length(timepts))=(2*choicethreshold);
            t = length(timepts+1);
        elseif resp(n,t)<= -choicethreshold;
            resp(n,t:length(timepts)) = -(2*choicethreshold);
            t = length(timepts+1);
        end
    end
end

cmap = gray((4*choicethreshold)+1);
colormap(cmap);
image(timepts,1:ntrials,resp+(2*choicethreshold)+1);
ylabel('trial number')
xlabel('time')

%b)
ntrials = 20;
timepts = 0:0.01:2;

signal = 0.09*rand(ntrials, length(timepts));
signal(2:2:end,:) = -signal(1:2:end,:);

noise = 0.8*randn(ntrials, length(timepts));

choicethreshold = 8;

for n = 1:ntrials;
    resp(n, 1) = 0;
    for t = 2:length(timepts);
        resp(n, t) = resp(n,t-1)+signal(n,t)+noise(n,t);
        if resp(n,t)>= choicethreshold;
            resp(n,t:length(timepts))=(2*choicethreshold);
            t = length(timepts+1);
        elseif resp(n,t)<= -choicethreshold;
            resp(n,t:length(timepts)) = -(2*choicethreshold);
            t = length(timepts+1);
        end
    end
end

cmap = gray((4*choicethreshold)+1);
colormap(cmap);
image(timepts,1:ntrials,resp+(2*choicethreshold)+1);
ylabel('trial number')
xlabel('time')

%c)
ntrials = 20;
timepts = 0:0.01:2;

signal = 0.09*rand(ntrials, length(timepts));
signal(2:2:end,:) = -signal(1:2:end,:);

noise = 0.8*randn(ntrials, length(timepts));

choicethreshold = 8;

for n = 1:ntrials;
    resp(n, 1) = 0;
    for t = 2:length(timepts);
        resp(n, t) = resp(n,t-1)+signal(n,t)+noise(n,t);
        if resp(n,t)>= choicethreshold;
            resp(n,t:length(timepts))=(2*choicethreshold);
            t = length(timepts+1);
        elseif resp(n,t)<= -choicethreshold;
            resp(n,t:length(timepts)) = -(2*choicethreshold);
            t = length(timepts+1);
        end
    end
end

cmap = gray((4*choicethreshold)+1);
cmap(1, :) = [1 0 0];
cmap(end, :) = [0 1 0];
colormap(cmap);
image(timepts,1:ntrials,resp+(2*choicethreshold)+1);
ylabel('trial number')
xlabel('time')