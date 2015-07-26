\name{mycis}
\alias{mycis}
\title{
Classification Instability
}
\description{
Compute the classification instability of a classification procedure.
}
\usage{
mycis(predict1, predict2)
}
\arguments{
  \item{predict1}{
The list of predicted labels based on one training data set.
}
  \item{predict2}{
The list of predicted labels based on another training data set.
}
}
\details{

CIS of a classification procedure is defined as the probability that the same object is classified to two different classes by this classification procedure trained from two i.i.d. data sets.
Therefore, the arguments predict1 and predict2 are generated on the same test data from the same classification procedure trained on two i.i.d. training data sets.
CIS is among [0,1] and a smaller CIS represents a more stable classification procedure. See Section 2 of Sun et al. (2015) for details.

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

	## Compute classification instability for knn, bnn, ownn, and snn with given parameters
	nn=floor(n/2)  
	permIndex = sample(n)
	predict1.knn = myknn(DATA[permIndex[1:nn],], TEST.x, K = 5)
	predict2.knn = myknn(DATA[permIndex[-(1:nn)],], TEST.x, K = 5)
	predict1.bnn = mybnn(DATA[permIndex[1:nn],], TEST.x, ratio = 0.5)
	predict2.bnn = mybnn(DATA[permIndex[-(1:nn)],], TEST.x, ratio = 0.5)
	predict1.ownn = myownn(DATA[permIndex[1:nn],], TEST.x, K = 5)
	predict2.ownn = myownn(DATA[permIndex[-(1:nn)],], TEST.x, K = 5)
	predict1.snn = mysnn(DATA[permIndex[1:nn],], TEST.x, lambda = 10)
	predict2.snn = mysnn(DATA[permIndex[-(1:nn)],], TEST.x, lambda = 10)

	mycis(predict1.knn, predict2.knn)
	mycis(predict1.bnn, predict2.bnn)
	mycis(predict1.ownn, predict2.ownn)
	mycis(predict1.snn, predict2.snn)

}
