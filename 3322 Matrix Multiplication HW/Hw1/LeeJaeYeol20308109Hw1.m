n=10000;
A=rand(n); %%%matrix  size 10x10
b=rand(n,1); %%% vector size 10
c=zeros(n,1);

%%% The following is the first implementation of c=A*b using ij-loop.
tic;
for i=1:n
    for j=1:n
        % complete the missing line to update c(i)
        c(i)=c(i)+b(j)*A(i,j); 
    end
end
disp(['ij loop, time: ' num2str(toc) ' seconds']);
%%%%%%

%%% The following is the second implementation of c=A*b using ji-loop.
c=zeros(n,1);
tic;
for j=1:n
    for i=1:n
        % complete the missing line to update c(i)
        c(i)=c(i)+A(i,j)*b(j);
    end
end
disp(['ji loop, time: ' num2str(toc) ' seconds']);
%%%%%%

%%% The following is the last implementation of c=A*b by calling the build-in function.
tic;
c=A*b;
disp(['build-in function, time: ' num2str(toc) ' seconds']);
%%%%%%%

% RESULT
% LeeJaeYeol20308109Hw1
% ij loop, time: 1.9715 seconds
% ji loop, time: 0.55585 seconds
% build-in function, time: 0.040392 seconds
