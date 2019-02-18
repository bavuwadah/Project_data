# =====================================

# package to use function "join"

library(plyr)


# Function to merge all files at specific folder

multmerge <- function(mypath){
  
  filenames=list.files(path=mypath, full.names=TRUE)
  
  datalist = lapply(filenames, function(x){read.csv(file=x,header=T)})
  
  Reduce(function(x,y) {join(x, y, by="s1fi_hhmid", type="left", match="first")}, datalist)}



# Store the final data:

data <- multmerge("C:/Users/avuwa/OneDrive/Desktop/Education")

# Change "~/New folder/" for your folder

# check for duplicates
Data <- read.csv("/Users/avuwa/OneDrive/Desktop/Research Ideas/Credit constraint/World Bank Data/GHA_2009_GSPS_v01_M_CSV/GHA_2009_GSPS_v01_M_CSV/To Use/Education/S1FI.csv", header = T)
households <- data.frame(table(Data$hhno))
n_occur <- data.frame(table(dat$hhno))

write.csv(dat, file = "Education.csv")
# =====================================

colnames(dat)
library(dplyr)

df = data.frame(q = 1, w = 2, e = 3)

oldnames = c(colnames(dat))
newnames = c("A","B")

df %>% rename_at(vars(oldnames), ~ newnames)