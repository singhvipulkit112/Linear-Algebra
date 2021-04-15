%% PS1 -- PULKIT SINGHVI
%% 
% (a)
A=[(-1/(2^(1/2))) 0; 0 (-1/(2^(1/2))); -1 1];
N = 100;
k = 0:N;
p = exp(1i*2*pi*k./N);
X=[real(p);imag(p)];
Y = A*X;
figure(13);
drawSphere(eye(2), [0 0], .1);
title('Unit sphere in R^{2} ');
snapnow;
figure(14)
x=Y(1,:)';
y=Y(2,:)';
z=Y(3,:)';
plot3(x, y, z)
xlabel('X')
ylabel('Y')
zlabel('Z')
grid on
title('Ellipsoid obtained in R^{3} as image of the unit sphere in R^{2}.')
snapnow;
disp('Condition Number of A:')
disp(cond(A))
%% 
% (b)
A=[-2 1 2; 0 2 0];
N = 300;
[x, y, z] = sphere(N);
figure(11);
drawSphere
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Unit sphere in R^{3}.')
axis equal
snapnow;
figure(12)
X = [ x(:)'; y(:)'; z(:)' ];
Y = A*X;
plot(Y(1,:), Y(2,:));
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{3} .')
snapnow;
disp('Condition Number of A:')
disp(cond(A))
%% 
% (c)
A=[1 0.9; 0.9 0.8];
figure(1)
drawSphere(eye(2), [0 0], .2);
title('Unit sphere in R^{2} ');
snapnow;
figure(2)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (d)
A=[1 0; 0 -10];
figure(3)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (e)
%% 
% (1) : $$ \epsilon = 10 $$  
A=[1 1; 1 10];
figure(4)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (2) : $$ \epsilon = 5 $$  
A=[1 1; 1 5];
figure(5)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (3) : $$ \epsilon = 1 $$  
A=[1 1; 1 1];
figure(6)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is equal to zero, A is not invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (4) : $$ \epsilon = 10^{-1} $$  
A=[1 1; 1 10^(-1)];
figure(7)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (5) : $$ \epsilon = 10^{-2} $$  
A=[1 1; 1 10^(-2)];
figure(8)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (6) : $$ \epsilon = 10^{-4} $$  
A=[1 1; 1 10^(-4)];
figure(9)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%% 
% (7) : $$ \epsilon = 0 $$  
A=[1 1; 1 0];
figure(10)
drawSphere(A, [0 0],.2);
title('Ellipsoid obtained in R^{2} as image of the unit sphere in R^{2} .')
snapnow;
disp('Determinant of A:')
disp(det(A))
disp('Since the determinant of A is not equal to zero, A is invertible.')
disp('Condition Number of A:')
disp(cond(A))
%%
% Relationship between determinant and condition number :
%%
% As observed in the results of parts (c), (d) and (e), determinant and
% condition number tend to follow an inverse relationship where larger
% condition number implies matrix is close to being singular or is infact
% singular.
