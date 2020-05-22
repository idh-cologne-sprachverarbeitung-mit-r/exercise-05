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
Again (as last week), open the file `R/exercise.R` in your favorite text editor. Depending on your operating system and settings, double clicking may open an editor that came with the R installation. This week, you will define functions instead of variables.

### 3.1 ATM


### 3.2 Fleiss Kappa
Fleiss' Kappa is a metric to compare annotators on clearly defined items: For each word, for instance, annotators define a part of speech tag. Fleiss Kappa then tells us how similar their judgments are. Kappa is defined in two parts: Expected and observed agreement. Please define functions for both parts. The *input* to both functions is a matrix that contains numbers. Each annotated word is represented by one row, and each possible part of speech tag by one column. The number in the matrix tells us how many annotators have selected this part of speech. The file `R/kappa.R` contains a matrix that you can use for development. It is the same matrix that is used on the [Wikipedia article](https://en.wikipedia.org/wiki/Fleiss%27_kappa), so if you want to compare intermediate results, you can do that. Your functions should of course work with arbitrary (valid) matrices.

The expected agreement tells us how much agreement we can expect if everyone just makes random guesses. This is therefore the probability that two annotators make the same decision by chance and based on the probability that a category is selected in the first place. This $p_j$ is calculated as $\frac{1}{Nn}\sum_{i=1}^N n_{ij}$.

<img src="https://render.githubusercontent.com/render/math?math=\frac{1}{Nn}\sum_{i=1}^N n_{ij}">



## Step 4
Your file `R/exercise.R` should now contain a number of lines with assignment statements (using `=`, `<-`, or `->`). Don't forget to save your file.
Now turning back to git: Add your file to the staging area (`git add R/exercise.R`), commit it (`git commit -m ""`, you need to fill in a commit message), and push it to the server (`git push --set-upstream origin BRANCHNAME`).

## Step 5

Wait a few minutes. Then go to https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-04/actions, select your branch and watch for the results. If your commit has a green checkmark, you're good to go. If you see a red cross, there is a mistake in your code. In this case, you can click on the commit message and inspect the details of the mistake. After that, you should go back to step 4, fix the bug, and add/commit/push again.
