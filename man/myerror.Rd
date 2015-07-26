\name{myerror}
\alias{myerror}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Classification Error
}
\description{
Compute the error of the predict list given the true list.
}
\usage{
myerror(predict, true)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{predict}{
	The list of predicted labels
}
  \item{true}{
	The list of true labels
}
}
\value{
It returns the errors of the predicted labels from a classification algorithm. 
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
	TEST.y = TEST[,d+1]
	
	## Compute the errors for knn, bnn, ownn, and snn with given parameters.
	predict.knn = myknn(DATA, TEST.x, K = 5)
	predict.bnn = mybnn(DATA, TEST.x, ratio = 0.5)
	predict.ownn = myownn(DATA, TEST.x, K = 5)
	predict.snn = mysnn(DATA, TEST.x, lambda = 10)

	myerror(predict.knn, TEST.y)
	myerror(predict.bnn, TEST.y)
	myerror(predict.ownn, TEST.y)
	myerror(predict.snn, TEST.y)

}
