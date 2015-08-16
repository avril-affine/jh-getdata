# read in datasets
features <- read.table("features.txt", col.names=c("id", "labels"))

x_train <- read.table("train/X_train.txt")
subj_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
x_test <- read.table("test/X_test.txt")
subj_test <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")

# merge train and test datasets
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subj <- rbind(subj_train, subj_test)
names(subj) <- "subject"

# extract mean and std features
mean_features <- grep("mean()", features$labels)
std_features <- grep("std()", features$labels)
feature_labels <- c(mean_features, std_features)
x <- x[feature_labels]

# label the activities
activity_labels <- read.table("activity_labels.txt", 
                              col.names=c("id","labels"))
activity_labels$labels <- tolower(activity_labels$labels)
y <- factor(y[,1], levels=activity_labels$id, 
            labels=activity_labels$labels)
y <- data.frame(y)
names(y) <- "activity"

# label the dataset
col_names <- features$labels[feature_labels]
col_names <- tolower(col_names)
col_names <- sub("\\(\\)", "", col_names)
names(x) <- col_names

# merge to create one dataset
dat1 <- cbind(subj, y, x)

# average each column
library(dplyr)
df <- tbl_df(dat1) %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

# write to file
write.table(dat1, file="tidydataset.txt", row.names=FALSE)
write.table(df, file="tidydatasetavg.txt", row.names=FALSE)