%% Class Excersises Chapter 6

%written WP 1/30/18

%6.1
n = 101;
[X, Y] = meshgrid(linspace(-1,1,n));
X(30:40, 10:90)= .1;
X(60:70, 10:90)= .8;

imagesc(X);
colormap(gray(256))

%6.2
%a)
n = 701;
nseg = 6;
radius = .7;

[X,Y] = meshgrid(linspace(-1,1,n));

theta = atan2(Y, X)./pi;
theta = mod(theta*nseg, 1);

radiusimage = sqrt(X.^2+Y.^2);
aperture = NaN(size(radiusimage));
aperture(radiusimage<radius) = 1; apurture(radiusimage>=radius) = 0;

illusion = theta.*aperture;

imagesc(illusion); axis square

%b)
n = 701;
nseg = 6;
radius = .7;

[X,Y] = meshgrid(linspace(-1,1,n));

theta = atan2(Y, X)./pi;
theta = -mod(theta*nseg, 1);

radiusimage = sqrt(X.^2+Y.^2);
aperture = NaN(size(radiusimage));
aperture(radiusimage<radius) = 1; apurture(radiusimage>=radius) = 0;

illusion = theta.*aperture;

imagesc(illusion); axis square
