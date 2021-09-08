function PowerIter

n=500;
A=randn(n,n);
A=(A+A')/2;

for testtime=1:5
    y0=randn(n,1);
    y0=y0/norm(y0);
    [mu,y]=Power(A,y0);
    % Store mu and y
    mu1(testtime)=mu;
    y1(:,testtime)=y;
end
% Display the results
disp('The computed eigenvalues are shown below. You will see they are almost the same.')
disp(mu1)
disp('The inner products of computed eigenvectors are shown below.');
disp('You will see some are close to 1, and some are close to -1.');
disp('This shows that the computed vectors may be in opposite direction'); 
disp('but both are the same eigenvector.')
disp(y1'*y1)

% Below is the subroutine of power iteration.     
    function [mu,y]=Power(A,y0)
        maxit=10^4;
        epsilon=1e-6;
        y=y0;
        for iter=1:maxit
            %%%%%%% 
            %Insert your lines for Power Iteration
            y = A* y;
            y = y / norm(y);
            mu = y'* A* y;
            %%%%%%%
            % Check: if ||Ay^k - mu^k y^k ||_2<= epsilon, then break the
            % for loop.
            % Complete the following line
            if norm(A*y - mu*y) <= epsilon
                break;
            end
        end
    end

end