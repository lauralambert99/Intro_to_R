#Load up libraries
library(qualtRics)
library(tidyverse)
########################SURVEY 1################################################

#Look at the surveys
s <- all_surveys()

s$name

#Bring in the first survey
survey1 <- fetch_survey(surveyID = s$id[8],
                        include_questions = c("QID1"),
                        include_metadata = NA)

#For those of you playing at home
#This has some simulated data so you can run the analyses if you'd like
survey1 <- read.csv("survey1.csv")

#Look at first few rows - what are we dealing with?
head(survey1)

#What type of data is this?
str(survey1)

#Let's do an analysis
#Look at counts per option
table(survey1$Q1)

ggplot(data = survey1) + 
  geom_bar(aes(x = Q1))

#########################SURVEY 2###############################################
#Bring in the second survey
survey_age <- fetch_survey(surveyID = s$id[7],
                           include_metadata = NA)

#For those of you playing at home
#This has some simulated data so you can run the analyses if you'd like
survey_age <- read.csv("survey2.csv")

#Look at the first few rows
head(survey_age)

print(survey_age_no_NA$Q1)

survey_age_no_NA <- na.omit(survey_age)
#Find average age
mean(survey_age_no_NA$Q1)

#And average articles read
mean(survey_age$Q2)

#See if there's a relationship
cor(survey_age$Q1, survey_age$Q2)

#Test normality assumption
shapiro.test(survey_age$Q1)

#Do a one-sample t-test



########################SURVEY 3################################################
#Bring in the last survey
survey3 <- fetch_survey(surveyID = s$id[3],
                        include_metadata = NA)

#For those of you playing at home
#This has some simulated data so you can run the analyses if you'd like
survey3 <- read.csv("survey3.csv")

names(survey3)

#Look at first few rows - what are we dealing with?
head(survey1)

#What type of data is this?
str(survey1)

#Set up to do an independent samples t-test
#First, check assumptions


#Run the test 

