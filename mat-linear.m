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

% Unit circle
r=1;
theta = linspace(0,2*pi,100);

plot(r*cos(theta),r*sin(theta),'-','LineWidth',1.5)
title('Unit circle and evolution of x(k)')
xlabel('x_{0}')
ylabel('x_{1}')
axis equal

hold on 
plot(x0',x1','LineWidth',1.5)

plot(u1(1),u1(2),'r*')
plot(u2(1),u2(2),'g*')

plot(v1(1),v1(2),'b*')
plot(v2(1),v2(2),'k*')

plot(s1,0,'m*')
plot(s2,0,'c*')

legend('unit circle','x(k)','u1','u2','v1','v2','s1','s2')