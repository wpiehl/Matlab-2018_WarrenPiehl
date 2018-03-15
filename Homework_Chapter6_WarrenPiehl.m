%% homework ch6

% written WP 2/8/18


% Q6.1

% 1st I'm so stuck it's ridiculous. 
close all
clear all

[W, E] = meshgrid(0:3141);

i = [300:1600];
j = [1601:2800];
W(:,i) = 80;
W(:,j) = 200;

imagesc(W)


[X,Y]=meshgrid(-pi*50:.1:pi*50);

R=X.^2+Y.^2;
R2=R<70.^2;

image(R2+W)

colormap(gray(500));
% 
% cmap=[0 0 0; 1 1 1];
% colormap(cmap)
% 
% 
% 
% M=ones(size(X));
% N=1+M(:, round(1:size(M,2)/2));
% Q=[M N M];
% imagesc(Q)

% % % % % % %%6.2 I know it doesn't work but I can't fix it
% % % % % % close all 
% % % % % % clear all
% % % % % % [X,Y]=meshgrid(-pi*50:.1:pi*50);
% % % % % % F=mod(atan2(X, Y), pi/6);
% % % % % % G=-mod(atan2(X, Y), pi/6);
% % % % % % R = X.^2+Y.^2;
% % % % % % R2= R<110.^2;
% % % % % % for R2 = R>110.^2;
% % % % % %     R2 = F;
% % % % % % end
% % % % % % imagesc(R2); hold
% % % % % % for R2 = R<110.^2;
% % % % % %     R2 = G;
% % % % % % end
% % % % % % imagesc(R2)
% % % % % % 
% % % % % % colormap(gray(256))
% % % % % % axis square
% % % % % % axis off

