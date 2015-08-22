\name{mysnn}
\alias{mysnn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Stabilized Nearest Neighbor Classifier
}
\description{
Implement the stabilized nearest neighbor classification algorithm to predict the label of a new input using a training data set. The stabilized nearest neighbor classifier contains the K-nearest neighbor classifier and the optimal weighted nearest neighbor classifier as two special cases.
}
\usage{
mysnn(train, test, lambda)
}
\arguments{
  \item{train}{
	Matrix of training data sets. An n by (d+1) matrix, where n is the sample size and d is the dimension. The last column is the class label.
}
  \item{test}{
	Vector of a test point. It also admits a matrix input with each row representing a new test point.
}
  \item{lambda}{
	Tuning parameter controlling the degree of stabilization of the nearest neighbor classification procedure. The larger lambda, the more stable the procedure is.
}
}
\details{

The tuning parameter lambda can be tuned via cross-validation, see cv.tune for the tuning procedure.

}
\value{
	It returns the predicted class label of the new test point. If input is a matrix, it returns a vector which contains the predicted class labels of all the new test points.  
}
\references{

W. Sun, X. Qiao, and G. Cheng (2015) Stabilized Nearest Neighbor Classifier and Its Statistical Properties. Available at arxiv.org/abs/1405.6642. 

}
\author{
Wei Sun, Xingye Qiao, and Guang Cheng
}
\examples{

	# Training data
	set.seed(1)
	n = 100
	d = 10
	DATA = mydata(n, d)

	# Testing data
	set.seed(2015)
	ntest = 100  
	TEST = mydata(ntest, d)
	TEST.x = TEST[,1:d]
	
	# stabilized nearest neighbor classifier
	mysnn(DATA, TEST.x, lambda = 10)

}
