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
