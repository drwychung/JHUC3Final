=============================================
README - Human Activity Recognition Dataset  
=============================================
Author: W Chung 
Date:   November 7, 2023 

This repository contains the files for converting the Human Activity Recognition (HAR) dataset into a revised format. In addition to this README.txt file, the repo contains the following files: 

run_analysis.R 
     Instruction List for the conversion process written in R. 

Codebook.txt 
     Metadata for the two output files that run_analysis.R generates. 

---------------------------------------------
     Conversion (ETL) Objectives 
---------------------------------------------

The run_analysis.R script in this repo is written to extract data from the "Original HAR Dataset" described below to achieve the following objectives: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script produces two files: HARDataset.txt and HARDataSummary.txt

---------------------------------------------
     Original HAR Dataset 
---------------------------------------------

The input to run_analysis.R is the following dataset: 

Human Activity Recognition Using Smartphones Dataset Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws

This original dataset can be downloaded at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The description of this dataset is available at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

---------------------------------------------
     Instruction on How to Run run_analysis.R 
---------------------------------------------

1. Download the dataset from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Create a folder and unzip in this new folder the "UCI HAR Dataset" folder in the zip file. 

3. Copy the run_analysis.R to the new folder and run the script in the new folder. Alternatively, uncomment the setwd() line and change the wdpath variable to the file path to this variable. 





