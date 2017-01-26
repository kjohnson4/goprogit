# Initial Requirements
require(devtools)
install_github('transmart/RInterface')
require("transmartRClient")
# Request connection to tranSMART VM
# This will return a URL you need to copy/paste into browser, then login to tranSMART, 
#   authorize the token, then copy it and paste back here in the console
connectToTransmart("URL_GOES_HERE")
# Get list of studies
studies <- getStudies()
print(studies)
# Assign a study and view further data
study <- "STUDY_NUMBER_GOES_HERE"
allObservations <- getObservations(study, as.data.frame = T)
summary(allObservations)
# I like to add comments in programs I do not understand lateda