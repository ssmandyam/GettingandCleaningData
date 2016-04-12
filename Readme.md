
This readme file describes the process to create a tidy data set, "tidy_data.txt" from the UCI Samsung Accelerometer training and test data. The tidy data set produced is described in Codebook.md. 

The original data source package can be found at the following location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More details on the UCI Samsumg Accelerometer project can be found at the following location: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following data sets were used from the original data source package to create the tidy data set

- train/subject_train.txt -> subjects (IDs) who participated and produced the training data set
- test/subject_test.txt -> subjects (IDs) who participated and produced the test data set
- features.txt -> List of all features that were measured
- train/X_train.txt -> the actual train data set
- test/X_test.txt -> the actual test data set
- train/y_train.txt -> training labels
- test/y_test.txt -> test labels
- activity_labels.txt -> links the class labels (in y_training and y_test) with their activity names

The script, "run_analysis.R" performs the following:
1. Merges the training and the test sets to create one data set.
    - reads the data sets listed above
    - binds train and test data sets 
    - Assigns feature names (column)but also fixes duplicate names in the originalso source with "_dupe<position>" appended where position is the row location in the original features.txt file 

2. Uses the dplyr package to extract only the mean and standard deviation variables.
 
3. Use descriptive activity names to name the activities in the data set
    - uses sapply() function to replace activity_label identifers with actual activity names

4. Appropriately label the data set with descriptive variable names.
    - binds the subject identifier and activities

5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
    - uses melt() function to simplify the data set
    - uses dcast() function to derive the mean value for each feature by subject and activity 
    - writes the tcast table to "tidy_data.txt" file
