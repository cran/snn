\name{mybnn}
\alias{mybnn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bagged Nearest Neighbor Classifier
}
\description{
Implement the bagged nearest neighbor classification algorithm to predict the label of a new input using a training data set.
}
\usage{
mybnn(train, test, ratio)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
	Matrix of training data sets. An n by (d+1) matrix, where n is the sample size and d is the dimension. The last column is the class label.
}
  \item{test}{
	Vector of a test point. It also admits a matrix input with each row representing a new test point.
}
  \item{ratio}{
	Resampling ratio.
}
}
\details{

The bagged nearest neighbor classifier is asymptotically equivalent to a weighted nearest neighbor classifier with the i-th weight a function of the resampling ratio,
the sample size n, and i. See Hall and Samworth (2005) for details. The tuning parameter ratio can be tuned via cross-validation, see cv.tune function for the tuning procedure.


}
\value{
It returns the predicted class label of the new test point. If input is a matrix, it returns a vector which contains the predicted class labels of all the new test points.  
}
\references{
Hall, P. and Samworth, R. (2005). Properties of Bagged Nearest Neighbor Classifiers. Journal of the Royal Statistical Society, Series B, 67, 363-379.
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
	
	# bagged nearest neighbor classifier
	mybnn(DATA, TEST.x, ratio = 0.5)

}
