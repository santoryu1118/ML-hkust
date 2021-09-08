% Generate A
n=500;
A=full(gallery('tridiag',n,-1,2,-1));

% Generate b
b=ones(n,1);


% Cholesky decomposition of A.
% Lower triangular part of A is overwritten by L.
for k=1:n
     %%%%%
     % Insert your lines
     
     
     
     %%%%%
end


% Forward substitution
% b is overwritten by the solution
for i=1:n
    %%%%%
    % Insert your lines
    
    
    %%%%%
end

% Back substitution
% b is overwritten by the solution
for i=n:-1:1
    %%%%%
    % Insert your lines
    
    
    %%%%%
end

% plot the solution
plot(b);