# downloaded from 
# http://www.gahetna.nl/collectie/index/nt00444
library(data.table)
# ~ 7.7 M records
nl <- fread("data/nl/total.csv")

basel <- nl[V6 == "Basel",]

basel_diverse <- nl[grepl("Basel|Basilea|Basle|Bale$",
                          nl$V6,
                          ignore.case = T),]
fwrite(basel_diverse, file = "data/basel_diverse.csv")

# Export to Excel 
library(openxlsx)
write.xlsx(basel_diverse,
           file = "data/basel_diverse_nl.xlsx")
