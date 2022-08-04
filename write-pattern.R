# Write out multiple environment objects as separate files.

mydocs <- mget(ls())

for (i in 1:length(mydocs)){
  write_csv(mydocs[[i]], paste("./data/working/omb_delin/", names(mydocs[i]), ".csv", sep = ""))
}
