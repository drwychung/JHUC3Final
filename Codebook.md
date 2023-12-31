# CODEBOOK - Human Activity Recognition Dataset  
  
Author: W Chung  
Date:   November 7, 2023  
  
This file describes two files that script run_analysis.R produces: HARDataset.txt and HARDataSummary.txt  
  
Both of these two files include an identical set of columns. HARDataSummary.txt file contains means of all measurement variables in HARDataset.txt summarized by Subject and Activity. These two files can be read with   
  
     read.table('HARDataSummary.txt', header=T)  
  
  
## Features Description  
  
The features selected for this file come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
  
## Feature Naming Convention  
  
The features containing the mean values of measurements are denoted with the suffix "Mean". The standard deviations are denoted with the suffix "Std". The measurements based on X, Y, and Z axis are denoted with the suffix "X", "Y", and "Z".  
  
## Feature List  
  
"Subject"                  "Activity"                 
  
"tBodyAccMeanX"            "tBodyAccMeanY"           "tBodyAccMeanZ"            
"tBodyAccStdX"             "tBodyAccStdY"             "tBodyAccStdZ"            
  
"tGravityAccMeanX"         "tGravityAccMeanY"         "tGravityAccMeanZ"         
"tGravityAccStdX"          "tGravityAccStdY"          "tGravityAccStdZ"          
  
"tBodyAccJerkMeanX"        "tBodyAccJerkMeanY"        "tBodyAccJerkMeanZ"        
"tBodyAccJerkStdX"         "tBodyAccJerkStdY"         "tBodyAccJerkStdZ"        
  
"tBodyGyroMeanX"           "tBodyGyroMeanY"           "tBodyGyroMeanZ"           
"tBodyGyroStdX"            "tBodyGyroStdY"            "tBodyGyroStdZ"            
  
"tBodyGyroJerkMeanX"       "tBodyGyroJerkMeanY"       "tBodyGyroJerkMeanZ"       
"tBodyGyroJerkStdX"        "tBodyGyroJerkStdY"        "tBodyGyroJerkStdZ"       
  
"tBodyAccMagMean"          "tBodyAccMagStd"           
"tGravityAccMagMean"       "tGravityAccMagStd"        
"tBodyAccJerkMagMean"      "tBodyAccJerkMagStd"       
"tBodyGyroMagMean"         "tBodyGyroMagStd"         
"tBodyGyroJerkMagMean"     "tBodyGyroJerkMagStd"      
  
"fBodyAccMeanX"            "fBodyAccMeanY"           "fBodyAccMeanZ"            
"fBodyAccStdX"             "fBodyAccStdY"             "fBodyAccStdZ"            
  
"fBodyAccJerkMeanX"        "fBodyAccJerkMeanY"        "fBodyAccJerkMeanZ"        
"fBodyAccJerkStdX"         "fBodyAccJerkStdY"         "fBodyAccJerkStdZ"     
    
"fBodyGyroMeanX"           "fBodyGyroMeanY"           "fBodyGyroMeanZ"           
"fBodyGyroStdX"            "fBodyGyroStdY"            "fBodyGyroStdZ"           
  
"fBodyAccMagMean"          "fBodyAccMagStd"           
"fBodyBodyAccJerkMagMean"  "fBodyBodyAccJerkMagStd"  
"fBodyBodyGyroMagMean"     "fBodyBodyGyroMagStd"      
"fBodyBodyGyroJerkMagMean" "fBodyBodyGyroJerkMagStd" 
  
