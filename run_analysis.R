#run_analysis.R
#consolidates the training and test data sets into a single tidy data set

#Step 1: read the training and test sets
x_traindf <- read.table("./train/X_train.txt", stringsAsFactors=FALSE)
y_traindf <- read.table("./train/y_train.txt", stringsAsFactors=FALSE)
x_testdf <- read.table("./test/X_test.txt", stringsAsFactors=FALSE)
y_testdf <- read.table("./test/y_test.txt", stringsAsFactors=FALSE)
sub_traindf <- read.table("./train/subject_train.txt", stringsAsFactors=FALSE)
sub_testdf <- read.table("./test/subject_test.txt", stringsAsFactors=FALSE)
act_label <- read.table("./activity_labels.txt", stringsAsFactors=FALSE)
feat_df <- read.table("./features.txt", stringsAsFactors=FALSE)

# Step 2: bind test and train sets and assign column names
M <- rbind(x_traindf, x_testdf)
#fix duplicates and assign labels
for (i in which(duplicated(feat_df$V2))) {
	feat_df$V2[i] = paste(feat_df$V2[i], "_dupe", as.character(i),sep="")
}
colnames(M) <- feat_df$V2

M$activity <- rbind(y_traindf, y_testdf)$V1
M$subject <- rbind(sub_traindf, sub_testdf)$V1

# assign variable values for activities
M$activity <- sapply(M$activity, function(x) act_label$V2[x])

#Step 3: Extracting the mean and standard deviation columns only
library(dplyr)
M <- tbl_df(M)
mean_std_vars <- c(grep("mean()",names(M), value=TRUE), grep("std()", names(M), value=TRUE))
MStd <- select(M, one_of("subject", "activity", mean_std_vars))

#Step 4: create a tidy data set with average of each variable for subject and activity
library(reshape2)
tmelt <- melt(MStd, id.vars=c("subject", "activity"), measure.vars=mean_std_vars)
tcast <- dcast(tmelt, subject+activity~variable, mean)
write.table(tcast, "tidy_data.txt", row.name=FALSE)


