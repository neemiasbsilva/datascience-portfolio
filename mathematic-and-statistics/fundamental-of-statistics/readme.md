#  Fundamental of Statistics

You see some implementations and concepts about Fundamental of Statistics for Data Science and Data Analystic.

# Population vs Sample

To diving deeper of statistic topics, first of all you need to understand the difference between **Population** and **Sample**. Population is the set of all observations (individuals, procedures, events, or objects) and usually is very large and diverse. Sample is a subset of observations from the population that ideally is a true representation of the population. The figure bellow ilutrate the process more intuitive.


<p align="center">
<img src="population-vs-sample.jpeg" width="29%" height="30%"></p>
<h6 align="center"> Example of the population vs sample. For more details about check <a href="https://www.scribbr.com/methodology/population-vs-sample/#:~:text=A%20population%20is%20the%20entire,t%20always%20refer%20to%20people.">Population vs. Sample | Definitions, Differences & Examples</a> web site.</h6>

So, to make your experimental results more reliable and hold for the entire population, the sample needs to be true representation of the population. That is, the sample needs to be unbiased. In other words, if your sample don't represent the true repesentation, you have to use some statistical sampling techniques (e.g. Random Sampling, Systematic Sampling, Clustered Sampling, Wheighted Sampling, or Stratified Sampling).

# Mean

Given a random variable called X for a particular data. This random variable can be split up as follow:

$$ X = X_{1}, X_{2}, X_{3}, ..., X_{N} $$

where $N$ is the number of observation or data points in the sample set or simple data frequency.

Then the **sample mean** can be defined by $\mu$, which is very close to the population mean. The mean can be:

$$ \mu = \frac{\left( \sum_{i=1}^N X_i \right)}{N} $$

This mean is also referred to as **expectation** which defined by E() or random variable with a bar on the top. For example E(X) can be:

$$ \bar{\mathbb{X}} = \frac{\left( \sum_{i=1}^N X_i \right)}{N} $$ 

To understand more about check the notebook available in the notebook folder.

# Variance

For know how far the number of observations (data point) are spreads out from the average value, we use the variance. For undertand better, variance is equal to the sum of squares of difference between the data values and the average (mean). The variance can be expressed as follows:

$$ \sigma^2 = \frac{\left( \sum_{i=1}^N (x_i - \mu)^2 \right)}{N}$$

Summary, for deriving expectation and variance you can use some of popular probability distribution functions: **Bernoulli**, **Binomial**, **Geometric**, **Uniform**, or **Exponential**.

To understand more about check the notebook available in the notebook folder.

# Standard Deviation

When we want to measure the extent to which data varies from the average, that means we want to apply **Standard Deviation** ( $\sigma$ ). The formula can be show:

$$ \sigma = \sqrt{\frac{\left( \sum_{i=1}^N (x_i - \mu)^2 \right)}{N}}$$

In general, $\sigma$ is preferred over the variance because is has the same unit as the number of observations, which means you can interpret more easily.

To understand more about check the notebook available in the notebook folder.

# Correlation

If you want to measure the relationship, the strength and the direction of the linear relationship between two variables, you can use the correlation metric. If a correlation is selected then it means that there is a relationship (or a partner).Suppose you have two random variables, so the correlation can be equal to the covariance between these two variables dived to the product of standard deviation of these variable.

$$ Cor(X, Y) = {Cov(X, Y) \over \sigma_x \sigma_y} $$

When interpret correlation is to not confuse it with a **causation**, given that a correlation is not a causation. Another point to keep in mind, coefficients'value range varie between -1 and 1, and if you want to use correlation of a variable itself the result its always be 1, in other words $Cor(X, X) = 1$.

To understand more about check the notebook available in the notebook folder.

# Covariance

For measure the joint variability of two random variables and describe the relationship between these two variables we use as a metric **Covariance**. This metric can be defined as the expected value of the product of the two variables from their means. The formula show bellow:

$$ Cov(Y, Z) = E[(Y - E(Y)) (Z - E(Z))] $$

Covariance can take negative, positive or zero values. Positive indicate that these two variables tend to vary in the same direction. Negative indicate the variables vary in the opposite direction. And finally, zero meant they don't vary together.

To understand more about check the notebook available in the notebook folder.

# Probability Distribution Functions

Probability Distribution Function, also called pdf, is a function that describe all possible values in the sample space, and the corresponding probabilities that a random variable can take within a give range. Every pdf needs to sastify the follow two criteria:

$$ 0 \lt P_r(X) \le 1 $$
$$ \sum P(X) = 1 $$

where the first criterium states that all probabilities should be numbers in the range of [0, 1], and the second criterium states that the sum of all possible probabilities should be equal to 1.

PDF can be split up into **discrete** distribution and **continous** distribution. Discrete describe the random process of countable sample space (e.g. tossing a coing that has two outcomes), examples of discrete pdf can be: Bernoulli, Binomial, Poisson, Discrete Uniform. Continous describe the random process with continous sample space, examples of continous pdf can be: Normal, Continous Uniform, Caughy.

## Binomial Distribution Function

Binomial pdf function gives the number of sucess in a sequence of n independent experiments, in other word, gives a boolean value outcome: sucess(with probability $p$ ) or failure (with probability $q = 1-p$ ). Binomial can be expressed as the follow math formula:

$$ Pr(X=k) = \binom{n}{k} p^k q^{n-k} $$

where X is a random variable, k is sucess observations, and n is the number of independent trials.

General, Binomial is useful when we want to analyzing the results of repeated experiments, especially if one is interested in the probability of meeting a particular threshold given a specific error rate.

To understand more about check the notebook available in the notebook folder.

# Poisson Distribution Function

Poisson is the driscrete pdf of the events in a specified time period, given the average number of times evets occur over that time period. In a particular example, Poisson distribution can be used to model the number of people arriving the subway statio between 6 and 11 am. Poison can be expressed as the follow math formula:

$$ P_r(X=k) = {\lambda^k e^{-\lambda} \over K!} $$

To understand more about check the notebook available in the notebook folder.

# Reference

[[1](https://www.oreilly.com/library/view/think-stats-2nd/9781491907344/)] Downey, Allen B. Think stats. " O'Reilly Media, Inc.", 2011.
