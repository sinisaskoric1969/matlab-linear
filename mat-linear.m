%% Question (a)

% Matrix and initial value parameters
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