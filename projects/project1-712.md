### Background

One of the most widely tackled problems in the world is trying to predict the stock market. Some argue this is a silly idea, they usually cite the [efficient market hypothesis](https://en.wikipedia.org/wiki/Efficient-market_hypothesis) which basically says it is impossible to beat the market because the market is essentially random (or reflective of the current news which is essentially random). Here is a book on this:

http://www.amazon.com/Random-Walk-Down-Wall-Street/dp/0393330338

This project doesn't seem relevant to public health but certain companies have taken a very scientific approach to the problem. One of them is Winton Capital Management, who have had a very successful run as a quantitative trader by focusing on many of the issues common with scientific disciplines (pre-registration, overfitting, model evaluation, etc.).

### Your Project:

Your project is to use the `quantmod` package to download historical data (and any other data you want) on the S & P 500 (list of companies here: https://en.wikipedia.org/wiki/List_of_S%26P_500_companies). You are then to build a forecasting/predictive model to predict what is the best stock to buy for the maximum return 1 and 5 days later along with the uncertainty in your prediction. For the one day return, assume that the stock is purchased at opening and sold at closing. For the five day return, assume that the stock is purchased on open on day one and sold at close 4 business days later. The goal is to rank the stocks by expected percent increase. 


### Submission requirements

_Poster_

The poster must fit into a space that is 36 inches by 48 inches. You will submit it as a pdf file. Your poster should describe (a) the data you used, (b) the approach you used, (c) your results, and (d) include your Kaggle user name so we can check that you submitted to the competition. Your score will not be used for grading (but obviously a better score is better :-). Here are some suggestions for making the poster: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1876493/.

_Reproducibility_

You must still submit code to reproduce the figures/numbers in your assignment and make predictions. Your reproducibility score will be determined by whether your code can be run without error and produces all numbers/figures in your main text. Please include library requirements at the beginning of your script and an estimate of the approximate runtime. Please also submit the compiled HTML from knitting your Rmd file. Comments are not required, but I will only try to fix code that is liberally and accurately commented.

Please submit a function that makes the two predictions described above. This is a loose framework for what your function should do: https://gist.github.com/jtleek/ea12b5f3cd81e97aed60. 

_Shiny App_

The Shiny App must have a date input and must provide a graph with the predictions along with a downloadable csv file of the predictions for a given day. You should submit the app as a link to a Github repo with the code to run your app. 

### Dates


* Assignment open: Nov 11th
* Poster due: 8pm November 25th
* App due: 8pm December 2nd




