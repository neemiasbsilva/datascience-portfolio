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

To understand more about check de notebook available in the notebook folder.