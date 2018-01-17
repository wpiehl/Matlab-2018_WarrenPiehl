% BreakfastCereal
%
% Provides examples of fun things you can do with cereal boxes.
% Inspired by my husbands mis-spelt childhood
%
% written WP 1/3/2018 for Matlab 2018


frosted = 'FROSTED FLAKES';
cheerios = 'CHEERIOS';

frosted(9) % "9" is the subscript or index; spits out "9th" piece of the string

frosted_scrambled = frosted; % defines this as "frosted"

frosted_scrambled(9) = 'E'; % changes the 9th thing to an E

disp(frosted_scrambled); % spits out now with changed variable 

str1 = 'CHEERIOS';

str1(1) = 'O';

str1(5) = 'P';

str2 = 'CHEMISTRY';

str2(1) = 'O';

str2(8) = 'B';

disp(str1);
disp(str2);

%% edited 1/16/18 for Excersizes for Chapter 2
%2.2
%a)
str = 'MACARONI AND CHEESE';
id1 = [1 2 7 13:19];
str(id1)
%b)
id2 = [15 16 5 9 1 8 7 12 9 8 18 9 3 15 8 7 16 18 19];
str(id2)

%2.3
%a)
[1:10]
linspace(1,10,10)
%b)
[10:2:18]
linspace(10,18,5)
%c)
[19:-1:15]
linspace(19,15,5)
%d)
[10:-2:-4]
linspace(10,-4,8)
%e
[0:3.1416:15.7080]
linspace(0,15.7080,6)
%f)
[0:pi:5*pi]
linspace(0,5*pi,6)

%2.4
str = 'aaaaaaaaaaaaaaaaaaaa';
%a)
str(3:3:20) = 'c'
%b)
str(2:3:20) = 'b'
%c)
str(3)
%d)
vr = [4:6]
str(vr) = 'def'
%e)
vr1 = [10:12 16:18]
str(vr1) = 'defdef'
%f)
str(6:6:18)

%
%2.5
%a) 
vr3 = linspace(12,13.23,40);
%b)
vr3(5)
%c)
vr3(end)

%2.6
resp = 'rererererererererererererererererererere';
%a)
resp = 'rerekererererererererererererererererere';
resp(5)
%b)
resp(5) = 'r'
%c)
resp(2:2:40)




