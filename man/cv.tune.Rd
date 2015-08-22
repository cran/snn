\name{cv.tune}
\alias{cv.tune}
\title{
Tuning via 5 fold Cross-Validation.
}
\description{
Implement the tuning procedure for K-nearest neighbor classifier, bagged nearest neighbor classifier, optimal weighted nearest neighbor classifier, and stabilized nearest neighbor classifier.
}
\usage{
cv.tune(train, numgrid = 20, classifier = "snn")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{train}{
	Matrix of training data sets. An n by (d+1) matrix, where n is the sample size and d is the dimension. The last column is the class label.
}
  \item{numgrid}{
	Number of grids for search
}
  \item{classifier}{
	The classifier for tuning. Possible choices are knn, bnn, ownn, snn.
}
}
\details{
For the K-nearest neighbor classifier (knn), the grids for search are equal spaced integers in [1, n/2].

Given the best k for the K-nearest neighbor classifier, the best parameter for the bagged nearest neighbor classifier (bnn) is computed via (3.5) in Samworth (2012).

Given the best k for the K-nearest neighbor classifier, the best parameter for Samworth's optimal weighted nearest neighbor classifier (ownn) is computed via (2.9) in Samworth (2012).

For the stabilized nearest neighbor classifier (snn), we first identify a set of lambda's whose corresponding risks are among the lower 10th percentiles, and then choose from them an optimal one which has the minimal estimated classification instability. The grids of lambda's are chosen such that each one is corresponding to an evenly spaced grid of k in [1, n/2]. See Sun et al. (2015) for details.

}
\value{
The returned list contains:

\item{parameter.opt}{The best tuning parameter for the chosen classifier. For example, the best K for knn and ownn, the best ratio for bnn, and the best lambda for snn.}
\item{parameter.list}{The list of parameters in the grid search for the chosen classifier.}

}
\references{
R.J. Samworth (2012), "Optimal Weighted Nearest Neighbor Classifiers," Annals of Statistics, 40:5, 2733-2763.

W. Sun, X. Qiao, and G. Cheng (2015) Stabilized Nearest Neighbor Classifier and Its Statistical Properties. Available at arxiv.org/abs/1405.6642. 
}
\author{
Wei Sun, Xingye Qiao, and Guang Cheng
}
\examples{
	set.seed(1)
	n = 100
	d = 10
	DATA = mydata(n, d)

	## Tuning procedure
	out.tune = cv.tune(DATA, classifier = "knn") 
	out.tune

}
