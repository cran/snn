\name{mywnn}
\alias{mywnn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Weighted Nearest Neighbor Classifier
}
\description{
Implement the weighted nearest neighbor classification algorithm to predict the label of a new input using a training data set.
}
\usage{
mywnn(train, test, weight)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
	Matrix of training data sets. An n by (d+1) matrix, where n is the sample size and d is the dimension. The last column is the class label.
}
  \item{test}{
	Vector of a test point.
}
  \item{weight}{
	The weight vector for all n nearest neighbors.
}
}
\value{
It returns the predicted class label of the new test point. 
}
\author{
Wei Sun, Xingye Qiao, and Guang Cheng
}
\examples{

	set.seed(1)
	n = 100
	d = 10
	DATA = mydata(n, d)

	## weighted nearest neighbor classifier
	weight.vec = c(rep(0.02,50), rep(0,50))
	mywnn(DATA, rep(-5,d), weight = weight.vec)

}
