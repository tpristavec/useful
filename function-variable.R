# Using variable names in functions.

sumyear <- function (obj, varname, yr) { 
  obj %>% mutate(varname = as.factor({{ varname }})) %>%
    group_by({{ varname }}) %>%
    summarize(n = n()) %>%
    mutate(pct = n * 100 / sum(n),
           year = yr) %>%
    rename(uic = {{ varname }})
}
