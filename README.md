README
======

This repository cotains the following files:

run_analysis.R
CodeBook.md

The "run_analysis.R" file contains the R code that can be used to achieve the following: 

1) Transform the UCIHAR Dataset into a new dataset, combined according Course Project requiriments. For details see description of the appropriate file result.txt in the codebook.md file. 

2) Produce a new dataset, tidy.txt, which contains only the average value of each of the variables for each subject for each activity. For details see the description in the codebook.md file.

Important: to use run_analysis.R

- download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- unzip file unto datafolder of your choice
- set "dataPath" variable (2nd line of file) to the directory, where downloaded zip-file was unziped
- run run_analysis.R

The "codebook.md" file describes the ouput files of run_analysis.R, the variables, the data, and work that performed to clean up the data

