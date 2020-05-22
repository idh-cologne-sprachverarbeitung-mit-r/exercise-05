# Exercise 5

**In General**: Please ask questions in the [ilias-Forum](https://www.ilias.uni-koeln.de/ilias/goto_uk_frm_3270419.html) for this course, so that others can also see the question and answer*.

*Please submit your solutions to this exercise until May 29nd.*

The goal of this exercise is to become familiar with how to write your own functions.

## Step 1
Read the tutorial!

We will skip a few chapters of the tutorial now. We have discussed the most important things about functions in R in our meeting, but if you want to read up on that, it's in [Chapter 10, "Writing your own functions"](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Writing-your-own-functions).


## Step 2

Clone this repository. The same as last week.

In the examples, I'll use "Textanalyse-mit-R", you should replace this with the path to your directory: `cd Textanalyse-mit-R`

Clone this repository: `git clone https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-05.git`

Enter the directory `cd exercise-05`

Create a new branch for you: `git checkout -b USERNAME`.

## Step 3
Again (as last week), open the file `R/exercise.R` in your favorite text editor. Depending on your operating system and settings, double clicking may open an editor that came with the R installation. This week, you will define functions instead of variables. Please write both functions into the same file.

### 3.1 ATM

When we withdraw money from an ATM, the ATM makes a guess, how to distribute the money amount over Euro bills. For this exercise, please write a function `atm(n)` that takes a numeric value. This value is the amount of money we withdraw (we assume that only valid numbers are entered, i.e., that end on zero or five).

The function should return a named list that describes how many of which bills are returned. The logic behind this split is to always use the maximal amount of the highest bill possible. Withdrawing 50 gets us a single 50 euro bill, withdrawing 80 gets us 50+20+10 (luckily, this is not what ATMs do in reality).

Below you'll see a few function calls (note the use of the function `unlist()`: This is just to make the result more readable, by converting the named list into a named vector):

```
> unlist(atm(50))
500 200 100  50  20  10   5 
  0   0   0   1   0   0   0 

> unlist(atm(10000))
500 200 100  50  20  10   5 
 20   0   0   0   0   0   0 
 
> unlist(atm(45))
500 200 100  50  20  10   5 
  0   0   0   0   2   0   1 
```

### 3.2 Fleiss Kappa
Fleiss' Kappa is a metric to compare annotators on clearly defined items: For each word, for instance, annotators define a part of speech tag. Fleiss Kappa then tells us how similar their judgments are. Kappa is defined in two parts: Expected and observed agreement. Please define functions for both parts. The *input* to both functions is a matrix that contains numbers. Each annotated word is represented by one row, and each possible part of speech tag by one column. The number in the matrix tells us how many annotators have selected this part of speech. The file `R/kappa.R` contains a matrix that you can use for development. It is the same matrix that is used on the [Wikipedia article](https://en.wikipedia.org/wiki/Fleiss%27_kappa), so if you want to compare intermediate results, you can do that. Your functions should of course work with arbitrary (valid) matrices.

The expected agreement tells us how much agreement we can expect if everyone just makes random guesses. This is therefore the probability that two annotators make the same decision by chance and based on the probability that a category is selected in the first place. This *p<sub>j</sub>* is calculated as the sum over the entire column *j*, divided by the number of rows (i.e., words, *N*) multiplied by the number of annotators (*n*). The overall expected agreement is then the sum of all squared *p<sub>j</sub>* values.

The observed agreement informs us about the actual agreement in the data. It is calculated over rows in the matrix. For each row, we need to calculate the pairwise agreement. This is done by summing over all elements in the row, but each element multiplied by itself minus one. This sum is then divided by the maximal number of agreements that could have been achieved (i.e., the number of ratings in this row times the number minus one). This is done for each row, and all these numbers are added up. They are then divided b the total number of items (i.e., number of rows) multiplied with the number of ratings. 

Please define two functions: `po(m)` to calculate the observed agreement and `pe(m)` for the expected agreement. You can assume that the matrices are correctly formatted and valid.


## Step 4
Your file `R/exercise.R` should now contain a number of lines with assignment statements (using `=`, `<-`, or `->`). Don't forget to save your file.
Now turning back to git: Add your file to the staging area (`git add R/exercise.R`), commit it (`git commit -m ""`, you need to fill in a commit message), and push it to the server (`git push --set-upstream origin BRANCHNAME`).

## Step 5

Wait a few minutes. Then go to https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-04/actions, select your branch and watch for the results. If your commit has a green checkmark, you're good to go. If you see a red cross, there is a mistake in your code. In this case, you can click on the commit message and inspect the details of the mistake. After that, you should go back to step 4, fix the bug, and add/commit/push again.
