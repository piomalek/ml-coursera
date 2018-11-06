function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
s = 0; 
for i = 1:m
  if y(i) == 1
    s = s - log(hypothesis(theta, X(i,:)));
  elseif y(i) == 0
    s = s - log(1 - hypothesis(theta, X(i,:)));
  endif
endfor

J = s/m;

%grad = zeros(size(theta));

grad = ((hypothesis(theta, X) - y)'*X)/m;

%for j = 1:size(theta)
%  grad(j) = ((hypothesis(theta, X) - y))*x(j))/m;
%endfor


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
