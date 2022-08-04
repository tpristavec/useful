# Read in multiple files from the same directory as separate dataframes.

filenames <- list.files("./data/original/omb_delin/", pattern = "cbsa_md_csa*")
names <- str_remove_all(filenames, ".xls")

for(i in names){
  filepath <- file.path("./data/original/omb_delin/", paste(i, ".xls", sep = ""))
  assign(i, read_xls(filepath)
}
