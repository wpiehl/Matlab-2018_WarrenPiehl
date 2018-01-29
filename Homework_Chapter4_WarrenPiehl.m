%% Homework Chapter 4
 
%% Q 4.1: Making matrices
 
% Create the following matrices without typing in the numbers by hand:

mat1=[5     0     0     0     0; ...
     0    10     0     0     0; ...
     0     0    15     0     0; ...
     0     0     0    20     0; ...
     0     0     0     0    25];

mat1 = zeros(5);
for i = 1:5;
    for j = 1:5;
        if i ==j
            mat1(i, j) = i *5
        end
    end
end
 
  mat2=[5     5     5     5     5; ...
    10    10    10    10    10; ...
    15    15    15    15    15; ...
    20    20    20    20    20; ...
    25    25    25    25    25];

mat2 = ones(5);
for i = 1:5;
    for j = 1:5;
        if i >=1
            mat2(i, j) = i *5
        end
    end
end

mat3=[4     3     2     1     0; ...
     9     8     7     6     5; ...
    14    13    12    11    10; ...
    19    18    17    16    15; ...
    24    23    22    21    20];

for i = 1:5;
    mat3(i, :) = [4 3 2 1 0] + ((i-1)*5)
end

mat4=[1     2     3     4     5; ...
     6     7     8     9    10; ...
    11    12    13    14    15; ...
    16    17    18    19    20];

mat4 = zeros(4,5);
for i = 1:4;
    mat4(i,:) = [1 2 3 4 5] + (i-1)*5
end

mat5=[19    18    17    16    15; ...
    14    13    12    11    10; ...
     9     8     7     6     5; ...
     4     3     2     1     0]; ...

mat4 = zeros(4,5);
for i = 1:4;
    mat4(i,:) = abs([1 2 3 4 5] + ((i-1)*5)-20)
end
 
mat6=[0     0     0     0     0; ...
    10    10    10    10    10; ...
    20    20    20    20    20; ...
    30    30    30    30    30];

mat6 = zeros (4,5);
for i = [1 2 3 4 5];
    mat6(:,i) = 0:10:30
end

mat7=[0     1     0     1     0; ...
     1     0     1     0     1; ...
     0     1     0     1     0; ...
     1     0     1     0     1];

mat7 = zeros(4,5);
for i = [2 4];
    for j = [1 3]
    mat7(i,[1 3 5]) = 1
    mat7(j,[2 4]) = 1
    end
end


%% Q 4.2: Indexing, matrices, length and for
%You run an experiment and the data is collected into 
% the following 3D matrix

mat(:,:,1) = [9    16    16    18     4; ...
     6    16    11    11     6; ...
    10    13     7    12     9; ...
    10     8    19    12     5];

mat(:,:,2) = [17     5     9     9    12; ...
     4     9     4     2     5; ...
     5     6    18     5    12; ...
     3    18    20     8    14];

% The rows represent repeated measurements, 
% the columns represent subjects, 
% and the 3rd dimension represents whether the subject 
% had drunk a cup of tea before the experiment.
% So each subject did the experiment 8 times, 
% four times with a cup of tea, four times without.

% a) Find out how many scores there are greater or 
% equal to 15.

numel(find(mat>=15))

% b) Find out how many scores greater or equal to 15 
% there were among people who didn�t get the cup of tea.

numel(find(mat(:,:,2)>=15))

%c) Set all the values less than or equal to 4 to NaN.

i = mat;
mat(i<=4) = NaN

% d) Calculate the mean for each subject 
% (not including values less than or equal to 4).
% If you feel very brave do it without using nonanmean from 
% the github account

mean(mean(mat(i>=5)))

% e) write a script where you go through each column 
% (subject) of data, and display for each subject
%       (i) how many NaN there are in that subject�s data, and
%       (ii) how many values there are that are greater or equal to 15.

numNaN = sum(isnan(mat(:, 1:5, 1))) + sum(isnan(mat(:, 1:5, 2)))
fifteenorhigher = sum(mat(:,1:5,1)>=15) + sum(mat(:,1:5,2)>=15)


%% Q 4.3: Logical operations, mod.

% Write a script so that if x is:

 % 0, 2, 4, 6  � etc.  
 % The script prints �x is an even integer�
if x^2 == round(x^2) && (x/2) - ceil(x/2) == 0
    'x is an even integer'
end

% 1 3 5 7  � etc.  
% The script prints �x is an odd integer�
if x^2 == round(x^2) && (x/2) - ceil(x/2) ~= 0
    'x is an odd integer'
end

% A positive non-integer (e.g. 3.2)
 % the script prints �x is a positive non-integer�
if x - ceil(x) ~= 0 && x > 0
    'x is a positive non-interger'
end

% A negative non-integer (e.g. -2.2) 
% the script prints �x is a negative non-integer�

if x - ceil(x) ~=0 && x < 0
    'x is a negative non-interger'
end

%% Q 4.4: While

% Write a script that on each loop rolls four dice and
% displays the sum of the four dice. 
% The program should count the number of rolls until
% the sum of the four dice is equal to 20.

count = 1;
roll = ceil(rand(1,4)*6);
while sum(roll) < 20
    count = count +1;
    roll = ceil(rand(1,4)*6);
end
disp(['Equal to 20 after', num2str(count), 'rolls.']);


%% and for the brave among you (xtra credit)

clear all

nsub=20;
% generate a random group of men and women
men=69+randn(nsub, 1)*3;
women=66+randn(nsub, 1)*3;
% calculate the real difference between them
realdiff=mean(men)-mean(women);
% throw all heights into a cauldron.

all=[men ;women];

% calculated the expected distribution of differences in means between men and women with a sample of 20 
% if there was no genuine height difference
for r=1:1000
    % stir the cauldron
    all=shuffle(all);
    % assume first 20 are men, second 20 are women
    m_men(r)=mean(all(1:nsub));
    m_women(r)=mean(all(nsub+1:end));
    m_diff(r)=m_men(r)-m_women(r);
end

% Modify the code to find out whether the height difference between men and women would be significant 
% with 10 individuals, 20, 100. (in matlab the command is ttest).



% in a group of 100 individuals, of whom 50 were male, 50 female. 
% How many of the 50 tallest people would be female?

 	 