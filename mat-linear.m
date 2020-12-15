A = [0.798 0.051; -0.715 1.088];
xo = [1;0];

% eigenvalues
E = eig(A);

% singular values 
S = svd(A);

% Answer: The eigenvalues have magnitude values less than one (both have
% magnitudes 0.943. No, not all singular values have values less than one.
% One singular value has a value 1.3801

%% Question (b)

% The steady state of the system is found by finding the value of 'X' when
% k -> infinity

% Matrix and initial value parameters
A = [0.798 0.051; -0.715 1.088];
xo = [1;0];
N = 10000;

for k = 0:N
    x = A*xo;
    xo = x;
end

% We see that if we run N to a large number, then 'x' converges to zero.
% The steady state is also asymptotically stable.
%% Question (c)

% Matrix and initial value parameters
A = [0.798 0.051; -0.715 1.088];
xo = [1;0];

x0 = [1];
x1 = [0];

for k = 0:200
    x = A*xo;
    xo = x;
    
    % Store the two values 
    x0 = [x0,x(1)];
    x1 = [x1,x(2)];
end

plot(x0',x1','LineWidth',2.5)
title('Phase plot')
xlabel('x_{0}')
ylabel('x_{1}')

% Answer: Yes, x1 is greater than x0.

%% Question (d)

% It obtains a spiral sink behavior convering to a point which is seen in (c). 

%% Question (e)

% Matrix and initial value parameters
A = [0.798 0.051; -0.715 1.088];
xo = [1;0];

% SVD decomposition
[U,S,V] = svd(A); % A = U*S*V'

u1 = U(:,1);
u2 = U(:,2);

v1 = V(:,1);
v2 = V(:,2);

s1 = S(1);
s2 = S(2);