# Join all objects in the environment based on a pattern.

datalist <- mget(ls(pattern = "mypattern"))
data <- bind_rows(datalist)
