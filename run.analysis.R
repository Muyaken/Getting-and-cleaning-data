getwd()


# loading required libraries
library(dplyr) 


# setting  the working directory
setwd("C:/Users/hp/Desktop/My Cousera courses/5. Getting and cleaning Data/week 4 project/Getting and Cleaning Data  - Week 4 Project - Assignment")


# reading the train dataset
x_train   <- read.table("X_train.txt")
y_train   <- read.table("Y_train.txt") 
sub_train <- read.table("subject_train.txt")


# reading the  test dataset 
x_test   <- read.table("X_test.txt")
y_test   <- read.table("Y_test.txt") 
sub_test <- read.table("subject_test.txt")


# read the features description 
features <- read.table("features.txt") 


# read activity labels 
activity_labels <- read.table("./activity_labels.txt") 


# merge of training and test datasets
x_total   <- rbind(x_train, x_test)
y_total   <- rbind(y_train, y_test) 
sub_total <- rbind(sub_train, sub_test) 


# Obtaining the measurements for mean and standard deviation only


sfeatures <- variable.names(grep(".*mean\\(\\)|std\\(\\)", features[,2], ignore.case = FALSE),)
x_total  <- x_total[,sfeatures[,1]]


# name columns
colnames(x_total)   <- sfeatures[,2]
colnames(y_total)   <- "activity"
colnames(sub_total) <- "subject"


# merge final dataset
total <- cbind(sub_total, y_total, x_total)


# change activities & subjects into factors 
total$activity <- factor(total$activity, levels = activity_labels[,1], labels = activity_labels[,2]) 
total$subject  <- as.factor(total$subject) 


# create a summary independent tidy dataset from final dataset 
# with the average of each variable for each activity and each subject. 
total_mean <- total %>% group_by(activity, subject) %>% summarize_all(funs(mean)) 


# export the summary dataset
write.table(total_mean, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE) 

