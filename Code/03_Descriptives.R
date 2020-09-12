##############################################################################
### file: 03_Descriptives
### authors: Jess Wild
### creation date: 8/6/20
### description: Descriptive statistics and summary data tables
############################################################################## 

#packages used
require(table1)
require(ggplot2)

#make overall descriptive statistics table
table1(~Class+Age+Sex+Survived, data = dat)

#make descriptive statistics table strafified by survival
table1(~Class+Age+Sex | Survived, data = dat)

#make basic barplots of the class, age, and sex variables with count on the y axis
ggplot(dat, aes(x = `Class`)) + geom_bar(fill = 'purple') + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + geom_text(stat='count', aes(label=..count..), vjust=-0.2) + ggtitle('Class Distribution on the Titanic') + labs(y="Number of Passengers")
ggplot(dat, aes(x = `Age`)) + geom_bar(fill = 'purple') + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + geom_text(stat='count', aes(label=..count..), vjust=-0.2) + ggtitle('Age Distribution on the Titanic') + labs(y="Number of Passengers")
ggplot(dat, aes(x = `Sex`)) + geom_bar(fill = 'purple') + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + geom_text(stat='count', aes(label=..count..), vjust=-0.2) + ggtitle('Sex Distribution on the Titanic') + labs(y="Number of Passengers")

#make barplots of class, age, and sex stratified by survival
ggplot(dat, aes(x = `Class`,fill = Survived)) + geom_bar() + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + ggtitle('Survival on the Titanic Stratified by Class') + labs(y="Number of Passengers")
ggplot(dat, aes(x = `Age`,fill = Survived)) + geom_bar() + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + ggtitle('Survival on the Titanic Stratified by Age') + labs(y="Number of Passengers")
ggplot(dat, aes(x = `Sex`,fill = Survived)) + geom_bar() + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + ggtitle('Survival on the Titanic Stratified by Sex') + labs(y="Number of Passengers")
