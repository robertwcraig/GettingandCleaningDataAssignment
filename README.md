# GettingandCleaningDataAssignment
This Readme will describe how to run the run_analysis.R script for the “Getting and Cleaning Data” final assignment.

Instructions:

    1.	Pull the project code using 'git clone https://github.com/robertwcraig/GettingandCleaningDataAssignment.git' and ‘git pull’
    
    2.	Download and unzip the data from the below URL into the same directory as the project code: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    
    3.	Load RStudio and set your working directory, ensuring that both the “UCI HAR Dataset” folder and run_analysis.R script are in the working directory.

    4.	Load the script using source("run_analysis.R") command in RStudio.
    
    5.	After execution of the function has finished, the output files tidydata.txt and calculated_tidydata.txt will be saved in the working directory folder. If text files with those names already appear, they will be replaced with the newest outputs.

Dependencies:

    1.	The data.table R package must be installed using the following command before running the run_analysis.R script: install.packages("data.table")
