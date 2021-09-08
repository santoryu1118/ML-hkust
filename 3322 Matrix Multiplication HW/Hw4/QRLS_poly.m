function QRLS_poly

% Generate Data
x=[-1:0.1:1]';
m=length(x);   % We have m=21.
x(2:end-1,1)=x(2:end-1,1)+0.1*rand(m-2,1);
y=x+0.2*randn(m,1);

% Use polynomial of degree 1 for regression.
deg=1;
n=deg+1;  % we have deg+1 basis functions.
[c1]=QR_LS_poly(x,y,n);

% Use polynomial of degree 8 for regression.
deg=15;
n=deg+1;
[c15]=QR_LS_poly(x,y,n);

% Plot the results.
xt=[-1:0.01:1]';
% Plot degree-1 polynomial regression in blue.
c=c1;
for i=1:length(xt)
    yt(i,1)=0;
    for j=1:length(c)
        yt(i,1)=yt(i,1)+c(j)*(xt(i,1))^(j-1);
    end
end
plot(xt,yt,'b');
hold on;
% Plot degree-15 polynomial regression in red.
c=c15;
for i=1:length(xt)
    yt(i,1)=0;
    for j=1:length(c)
        yt(i,1)=yt(i,1)+c(j)*(xt(i,1))^(j-1);
    end
end
plot(xt,yt,'r');
hold on;
plot(x,y,'y*');
legend({'Degree-1 polynomial','Degree-15 polynomial'},'FontSize',16)
%axis ([-2 2 -2 2])
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Complete the following function to compute coefficients via QR Least squre.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function c=QR_LS_poly(x,y,n)
    % Generate A.
    m=length(x);
     
    for i=1:m
        for j=1:n
            %%%%%%%%%%%%%%
            % Complete the line to compute A(i,j)
            
            A(i,j)=....
            
            %%%%%%%%%%%%%%
        end
    end
    
    % Solve the least squares min||Ac-y||_2^2 via QR decomposition.
    [Q,R]=ModifiedGramSchmidt(A);
    %%%%%%%%%%%%%%%%%%%%%%%%
    %%% Write or paste your code of back-substitution for solving R*c=Q^T*y. The answer is stored in c. 


    %%%%%%%%%%%%%%%%%%%%%%%  
end



%%% Paste your modified Gram-Schmidt subroutine in gs_qr.m in Homework 3.
function [Q,R]=ModifiedGramSchmidt(A)
    [m,n]=size(A);
    Q=A;
    R=zeros(n,n);
    for k=1:n
        %%%%%%%%%%%%%%%%%%%%%%%
        % Add lines for modified Gram-Schmidt
        
        
        %%%%%%%%%%%%%%%%%%%%%%%
    end
end
end