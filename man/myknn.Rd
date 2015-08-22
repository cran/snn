\name{myknn}
\alias{myknn}
\title{
K Nearest Neighbor Classifier
}
\description{
Implement the K nearest neighbor classification algorithm to predict the label of a new input using a training data set.
}
\usage{
myknn(train, test, K)
}
\arguments{
  \item{train}{
Matrix of training data sets. An n by (d+1) matrix, where n is the sample size and d is the dimension. The last column is the class label.
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
Fix, E. and Hodges, J. L., Jr. (1951). Discriminatory Analysis, Nonparametric Discrimination: Consistency Properties. Randolph Field, Texas, Project 21-49-004, Report No.4.
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
	
	# K nearest neighbor classifier
	myknn(DATA, TEST.x, K = 5)

}
