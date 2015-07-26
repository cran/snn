\name{myownn}
\alias{myownn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimal Weighted Nearest Neighbor Classifier
}
\description{
Implement Samworth's optimal weighted nearest neighbor classification algorithm to predict the label of a new input using a training data set.
}
\usage{
myownn(train, test, K)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
	Matrix of training data sets
}
  \item{test}{
	Vector of a test point. It also admits a matrix input with each row representing a new test point.
}
  \item{K}{
	Number of nearest neighbors considered.
}
}
\details{

The tuning parameter K can be tuned via cross-validation, see cv.tune function for the tuning procedure.
}
\value{
It returns the predicted class label of the new test point. If input is a matrix, it returns a vector which contains the predicted class labels of all the new test points.  
}
\references{
R.J. Samworth (2012), "Optimal Weighted Nearest Neighbor Classifiers," Annals of Statistics, 40:5, 2733-2763.
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
	
	# optimal weighted nearest neighbor classifier
	myownn(DATA, TEST.x, K = 5)

}
