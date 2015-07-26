\name{mydata}
\alias{mydata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Data Generator
}
\description{
Generate random data from mixture Gaussian distribution.
}
\usage{
mydata(n, d, mu = 0.8, portion = 1/2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
	The number of observations (sample size).
}
  \item{d}{
	The number of variables (dimension).
}
  \item{mu}{
	In the Gaussian mixture model, the first Gaussian is generated with zero mean and identity covariance matrix.
The second Gaussian is generated with mean a d-dimensional vector with all mu and identity covariance matrix.
}
  \item{portion}{
	The prior probability for the first Gaussian component.
}
}
\value{
Return the data matrix with n rows and d + 1 columns. Each row represents a sample generated from the mixture Gaussian distribution. The first d columns are features and the last column is the class label of the corresponding sample.
}
\author{
Wei Sun, Xingye Qiao, and Guang Cheng 
}
\examples{

	set.seed(1)
	n = 100
	d = 10
	DATA = mydata(n, d)
	
	DATA.x = DATA[,1:d]
	DATA.y = DATA[,d+1]
	
}
