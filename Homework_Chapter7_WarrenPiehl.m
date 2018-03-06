%% Q7.1 Structures

% create a structure, mystruct that contains 3 fields.
% mystring : which contains your name
% mychange: a double (default for any number) containing the amount of loose change in your wallet or puse
% mygender: a logical, with 1 for female and 0 for male

mystruct = struct('mystring','Warren','mychange',52,'mygender',0)

% now make a second element in that structure (mystruct(2).fieldname) with
% the same information for someone else (imaginary is fine).

mystruct(2).mystring = 'Alice';
mystruct(2).mychange = 97;
mystruct(2).mygender = 1;
mystruct(2)


%% Q 7.2 Cell arrays

% Make a 3 (fields) x 2 (individuals) cell array that contains all the
% information of the structure above

array = [struct2cell(mystruct(1)) struct2cell(mystruct(2))]

% pull out the name of the second individual.

array(1,2)

% pull out the amount of change that you had and add it to amount of change
% the other individual had.

Totalchange = (cell2mat(array(2,1))+cell2mat(array(2,2)))



