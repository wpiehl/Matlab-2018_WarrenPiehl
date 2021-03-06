%% Random walk model for posturography data

%displays A/P and R/L ratio 
%displays average COP for AP over RL for x number of subjects

%Written WP for Matlab Course 3/1/18

clear all
close all

%Number of subjects
n = 60;

%% weight of subjects in a vector: in kg/m^2
m = [(24.5-18.9).*randn(n,1)+(18.9)]; %%average BMI
m(m > 26) = 24.5;
m(m < 18) = 18.9;

%gravity in m/s^2
g = 9.80665;

%random acceleration generator
A = [((-.10)-(-.09)).*randn(200,1)+(.09)]';
% noise
B = [((-.07)-(-.01)).*randn(60,200)+(-0.5)];

% Time: 20s samples for each trial, 10Hz sampling rate
timevect = linspace(0.1,20,200); 

%Raw data Force and Momentum:

% AP Force PLUS noise, AP sway is more likely to have noise
Fx = (m*A)+B;

% ML Force
Fy = (m*A)-B;

% Gravitational force
Fz = m*g;

% AP Momentum
Mx = repmat(m, 1, 200).*Fx;

%ML Momentum
My = repmat(m, 1, 200).*Fy;

%AP sway Center of Pressure
Copy = Mx./repmat(Fz, 1, 200);

%ML sway Center of Pressure
Copx = My./repmat(Fz, 1, 200);

%%% AVERAGE ACROSS SUBJECTS Anterior and posterior sway RATIO
A_mn = Copy(Copy(:)>mean(Copy(:))); A_mn=mean(A_mn);
P_mn = Copy(Copy(:)<mean(Copy(:)));P_mn=mean(P_mn);

%%% AVERAGE ACROSS SUBJECTS Rightward and leftward sway RATIO
R_mn = Copx(Copx(:)>mean(Copx(:)));R_mn=mean(R_mn);
L_mn = Copx(Copx(:)<mean(Copx(:)));L_mn=mean(L_mn);

APRAT = A_mn/P_mn;
RLRAT = R_mn/L_mn;

% COP per subject figure
%plot data
scatter(mean(Copy, 2),mean(Copx, 2)); hold
%create a bestfit line
line = lsline;
axis equal
%title, labeling
Title = title('AP/RL average COP');
xlabel = xlabel('RL COP');
ylabel = ylabel('AP COP');
% Calculate slope of the bestfit line
B = [ones(size(line.XData(:))),line.XData(:)]\line.YData(:);
Slope = B(2);
Intercept = B(1);
%insert a text box that shows average AP ratio and RL ratio
%AND line info
dim = [0.2 0.5 0.5 0.3];
dim2 = [0.7 0.2 0.2 0.3];
str = {'AVERAGE','AP ratio: ' APRAT, 'RL ratio: ' RLRAT};
annotation('textbox',dim,'String',str,'FitBoxToText','on');
str2 = {'SLOPE AP/RL', 'y =' Slope 'x', '+' Intercept};
annotation('textbox',dim2,'String',str2,'FitBoxToText','on');



