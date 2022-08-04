# Remove all objects in the environment that don't follow a pattern.

rm(list = setdiff(ls(), "mypattern")) 
