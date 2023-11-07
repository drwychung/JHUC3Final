# run_analysis.R 
# Author: W Chung 
# Date:   November 7, 2023 
# 
# This script is the instruction list for converting the 
# "UCI HAR Dataset" into a revised format. 
# 
# For the instructions on how to download the input 
# data set, please see README.txt
#
# -------------------------------------------------------

# If you are not running this script in the folder with 
# the "UCI HAR Dataset" folder, uncomment the following 
# two line and update the wdpath variable.
#
# wdpath = 'c://users/USERNAME/Desktop/'
# setwd(wdpath)

library(dplyr)
fpath = 'uci har dataset/'

# -------------------------------------------------------
# Read train dataset, combine it with subject and activity
# -------------------------------------------------------

txt = readLines(paste0(fpath, 'features.txt'))
labF = sub('(^[ ]*[0-9]+[ ]+)(.*)', '\\2', txt)

txt = readLines(paste0(fpath, 'train/x_train.txt'))
dlst = strsplit(txt, '\\s+')
dlst = lapply(dlst, as.numeric)
df = data.frame(
   matrix(unlist(dlst), length(dlst), byrow=T) 
)[,-1]
colnames(df) = labF

txt = readLines(paste0(fpath, 'train/y_train.txt'))
df$Activity = as.integer(txt) 

txt = readLines(paste0(fpath, 'train/subject_train.txt'))
df$Subject = as.integer(txt) 

dfx = df 

# -------------------------------------------------------
# Read test dataset, combine it with subject and activity
# -------------------------------------------------------

txt = readLines(paste0(fpath, 'test/x_test.txt'))
dlst = strsplit(txt, '\\s+')
dlst = lapply(dlst, as.numeric)
df = data.frame(
   matrix(unlist(dlst), length(dlst), byrow=T) 
)[,-1]
colnames(df) = labF

txt = readLines(paste0(fpath, 'test/y_test.txt'))
df$Activity = as.integer(txt) 

txt = readLines(paste0(fpath, 'test/subject_test.txt'))
df$Subject = as.integer(txt) 

# -------------------------------------------------------
# Combine test and train df
# Convert Activity variable to factor with labels
# -------------------------------------------------------

dfx = rbind(dfx, df) 

txt = readLines(paste0(fpath, 'activity_labels.txt'))
labA = sub('(^[0-9]+[ ]+)(.*)', '\\2', txt)

dfx$Activity = factor(
   dfx$Activity, levels=1:6, labels=labA
)

# -------------------------------------------------------
# Extract only mean and std variables
# Change variable names to script-friendly names
#   (no dash, parentheses)
# -------------------------------------------------------

cname = colnames(dfx)
ix = grepl('\\-mean[(][)]|\\-std[(][)]', cname)
dfx = dfx[,c('Subject', 'Activity', cname[ix])]

cname = colnames(dfx) 
cname = sub('\\-mean[(][)]', 'Mean', cname)
cname = sub('\\-std[(][)]', 'Std', cname)
cname = sub('\\-(X|Y|Z)', '\\1', cname)
colnames(dfx) = cname 

# -------------------------------------------------------
# Create a second df with the means of all variables 
# summarized by Subject and Activity
# -------------------------------------------------------

dfs = dfx %>% 
   group_by(Subject, Activity) %>%
   summarize_all(mean) %>%
   data.frame

# -------------------------------------------------------
# Write Ouput files (both the revised and summarized files)
# -------------------------------------------------------

write.csv(dfx, 'HARDataset.csv')
write.csv(dfs, 'HARDataSummary.csv') 








