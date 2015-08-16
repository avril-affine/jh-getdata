John Hopkins (Coursera) - Getting and Cleaning Data
====================
#Data
The object of this project is to clean the provided dataset. The data in this project can be obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#How to use
To run this script the data should be downloaded from the link above and should be run from the first level of the downloaded folder.

#run_analysis.R

- Reads in relevant datasets
- Merges the train and test datasets to create one dataset
- Extracts all features containing either mean or std
- Labels the activity observations with appropriate names
- Attach appropriate column names to feature table
- Merge the subject, activity, and feature tables together
- Compute the mean of each column for each activity and subject
- Write the tidy datasets to file