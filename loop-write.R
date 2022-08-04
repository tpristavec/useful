# Do something in a loop and write the output into the environment.

for (val in 1:length(methods)) {
  df <- stringdist_join(data_amazon, data_fndds, 
                        by = c("upc_description" = "ec_description"),
                        mode = "left",
                        ignore_case = T, 
                        method = methods[val], 
                        max_dist = 15, # Broadly applicable to all methods, can tailor for each.
                        distance_col = "dist") %>%
    group_by(upc_code) %>%
    slice_min(order_by = dist, n = 3) %>%
    ungroup() %>%
    arrange(dist)
  
  assign(paste("data", methods[val], sep = "_"), df)
}
