#Load up libraries
library(qualtRics)
library(tidyverse)
########################SURVEY 1################################################

#Look at the surveys
s <- all_surveys()

s$name

#Bring in the first survey
survey1 <- fetch_survey(surveyID = surveys$id[8])

#For those of you playing at home:
survey1 <- read.csv("survey1.csv")

#Look at first few rows - what are we dealing with?

#Pull out only the questions we want

#What type of data is this?

#Let's do an analysis


#########################SURVEY 2###############################################
#Bring in the second survey
survey_age <- fetch_survey(surveyID = s$id[7])

#Look at the first few rows




########################SURVEY 3################################################
#Bring in the last survey
survey3 <- fetch_survey(surveyID = s$id[3])

names(survey3)
