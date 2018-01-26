%% Chapter 4 Class Excersizes

% Wrtitten WP 1/24/18

%4.1

A = ones(5,5);
for i = [1, 1:5];
A(3:5, i) = 2;
end
disp(A)

B = zeros(5,5);
for i = [1 2 5, 1];
    B(1:5, i) = 1;
end
disp(B)

C = ones(6,5);
for i = [2 3];
    C(2:4, i) = 0;
end
disp(C)

x = [1:5];
D = repmat(x, 5, 1)'

E = ones(6, 6);
for i = 1:6;
    for j = 1:6;
        if i<=j;
        E(i,j) = 2;
        end
    end
end
disp(E)

F = zeros(5, 5);
for i = 1:5;
    if i>=0;
  F(:, i) = (i-1)*5;
    end
end
disp(F)

for i = 1:5
G(:, i) = [1 2 3 4 5] + ((i-1)* 5);
end
disp(G)

H = zeros(8,8);
for i = [linspace(1,7,4)]
    H(:, i) = 1;
end
disp(H)

I = zeros(8);
for i = 1:2:8
    for j = 1:2:8
        if i == j
            I(i,j) = 1;
        end
    end
end
disp(I)

J = ones(5);
for i = 1:5;
    J(:, i) = [0 1 2 3 4] + (i-1);
end
disp(J)

for i = 1:5;
    K(i, :) = i:i:5*i;
end
disp(K)

L = G'

%%4.2

%a)
mat = zeros(3,3,3);
mat(2,2,2) = 1

%b)
mat1 = zeros(5,5,5);
mat1(2:4,2:4,2:4) = 1

%%4.3

%a)
sub2ind([4:3],3,2)

%b)
[i,j] = ind2sub([4,3],7)

%%4.4

%a)
if x > 0
    'x is positive'
elseif x < 0
    'x is negative'
end

%b)
x < 2 || x > pi

%c)
(x>2 && y<4) || z == 0

%%4.5

count = 1;
roll = ceil(rand(1,2) *6);
while sum(roll) > 2
    count = count +1;
    roll = ceil(rand(1,2)*6);
end
disp(['Snake eyes after', num2str(count), 'rolls.']);
