###Reads files from working directory & creates merged dataset of measurements with descriptive variable names###
data<-rbind(read.table("test/X_test.txt"),read.table("train/X_train.txt"))
    names<-read.table("features.txt")$V2
    colnames(data)<-names

###From merged dataset selects only calculated mean/std measurements###
meanstd<-grep("*mean\\(\\)|*std\\(\\)", names(data), ignore.case=TRUE)
    ##excludes measurements on MeanFreq() and gravityMean or where Mean is used as part of additional function
data_step2<-data[,sort(meanstd)]
    ##preserves original order of measurements while limiting to desired mean/std variables

###Adds participant and activity information to data set###
    activity<-rbind(read.table("test/y_test.txt"), read.table("train/y_train.txt"))
        colnames(activity)<-"activity"
    participant<-rbind(read.table("test/subject_test.txt"),read.table("train/subject_train.txt"))
        colnames(participant)<-"participant"

data_step3<-cbind(participant, activity, data_step2)

###Recodes for descriptive activities###
    recode<-c("walking"=1, "walking upstairs"=2, "walking downstairs"=3, "sitting"=4, "standing"=5, "laying"=6)
data_step3$activity<-factor(data_step3$activity, levels=recode, labels=names(recode))

###Creates new tidy dataset with average of each variable for each activity and subject###
require(dplyr)
    #will load dplyr package, will first install package if not already available in library
data_step4<-group_by(data_step3, activity, participant)
data_step4<-summarise_each(data_step4, funs(mean))

###Creates and saves tidy data as .txt file to working directory
write.table(data_step4, "tidy_data.txt", row.names=FALSE)

