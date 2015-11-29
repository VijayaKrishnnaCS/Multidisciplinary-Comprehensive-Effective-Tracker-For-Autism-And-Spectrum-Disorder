install.packages("caret", dependencies = TRUE)
install.packages("randomForest")

setwd("~/Desktop/Swabhiman/")

// read the data
trainSet <- read.table("train.csv", sep = ",", header = TRUE)
testSet <- read.table("test.csv", sep = ",", header = TRUE)

// to view
head(trainSet)
head(testSet)


// cross tabs & box plots for us to analyse the features

table(trainSet[,c("Survived", "Pclass")])
library(fields)
bplot.xy(trainSet$Survived, trainSet$Age)
bplot.xy(trainSet$Survived, trainSet$SpecificGene)


// to see if there are useless variables like NA etc. If so, we will need to remove the variable itself .. or is there another way  ? just to remove the useless NA data
summary(trainSet$Age)
summary(trainSet$SpecificGene)

// NOW FOR THE REAL CODE 

# Convert Survived to Factor
trainSet$Survived <- factor(trainSet$Survived)
# Set a random seed (so you will get the same results as me)
set.seed(42)

# Train the model using a "random forest" algorithm
# Survived is a function of the variables we decided to include
# Use the trainSet dataframe as the training data
# Use the "random forest" algorithm (method = "rf") IS THE CODE USED
# Use cross-validation
# Use 5 folds for cross-validation
model <- train(Survived ~ Pclass + Sex + SibSp + MostEffectiveTreatment + Parch + SpecificGene, data = trainSet, method = "rf",trControl = trainControl(method = "cv", number = 5))


// to see the result
model

//Making predictions on the test set
testSet$Survived <- predict(model, newdata = testSet)
// gives an error becuase NA exists

// so we need to manaually figure that out .. drawback of R/caret
summary(testSet)

// setting the value for NA by checking is.na
testSet$SpecificGene <- ifelse(is.na(testSet$SpecificGene), mean(testSet$SpecificGene, na.rm = TRUE), testSet$SpecificGene)

// run again
testSet$Survived <- predict(model, newdata = testSet)


// jsut create the csv file -- its so damn easy
submission <- testSet[,c("PassengerId", "Survived")]
write.table(submission, file = "submission.csv", col.names = TRUE, row.names = FALSE, sep = ",")












