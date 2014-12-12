Getting_and_Cleaning_Data
=========================

Final Project for Getting and Cleaning Data course offered via Coursera by Johns Hopkins Univeristy.
##Description
This repo represents the Course Project for Getting and Cleaning Data offered via Coursera by Johns Hopkins University.  
The purpose of the project was to demonstrate the ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis. Submission requirements included: 1) the tidy data set described below, 2) a link to a Github repository with the script for the preformed analysis, and 3) a code book that described the variables, the data, and any transformations or work performed to clean up the data. In addition, a README.md should explain how all of the scripts work and how they are connected.  

##Project Overview
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the initial data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The initial data for the project can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


###	Project includes one R script called run_analysis.R that does the following: 
Line 2: Reads files from the working directory and creates a merged dataset of provided measurements. dim: 10299 obs. of 561 variables.

Line 3-4: Reads file and appends the variable names to the data from Line 2 .

Line 7: Extracts variables which are a calculated mean or standard deviation.  This excludes variables reporting mean Frequency or where mean was used as a variable of the called function. 66 variables met these criteria.

Line 9: Creates a subset of the data with only those selected measurements in from Line 7 and preserves the order of the original.  dim: 10299obs. of 66 variables. 

Line 12-13: Reads file and creates a merged dataset of all activities preformed to generate the reported measurements.  This variable is given the name “activity.”

Line 14-15: Reads file and creates a merged dataset for all study participants.  This variable is given the name “participant.”

Line 17: Table of selected measurements is appended to include the participant and activity variables. dim: 10299obs. of 68 variables 

Line 20: A vector is created to recode the activity data with descriptive character values.

Line 21: Labels activity observations with descriptive values.

Line 24: Opens dplyr package

Line 25: Using dplyr package, groups data by each activity and participant.

Line26: Using dplyr package, creates a tidy data set reporting the mean for each measurement by activity and study participant. dim: 180 obs. of 68 variables

Line 29: Saves tidy dataset into working directory under the file name “tidy_data.txt”.

#####	Project includes one Codebook.md which describes the variables, the data, and further explains the work performed to create the tidy dataset from the initial data files.
