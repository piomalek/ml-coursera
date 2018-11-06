function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% You need to return the following variables correctly
s = 0; 
for i = 1:m
  if y(i) == 1
    s = s - log(hypothesis(theta, X(i,:)));
  elseif y(i) == 0
    s = s - log(1 - hypothesis(theta, X(i,:)));
  endif
endfor

J = (s/m) + ((lambda/(2*m))*sum(theta(2:end).^2));

%J = J + (lambda/2*m)*sum(theta(2:end).^2);

%grad = zeros(size(theta));

grad = (((hypothesis(theta, X) - y)'*X)/m) + (lambda*[0;theta(2:end)]')/m;

% =============================================================

end
