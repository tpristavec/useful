# Example function for plotting.

myplot <- function(df, y_var, threshhold = NULL) {
  ggplot(df) +
    aes(
      x = .data[["day"]],
      y = .data[[y_var]]
    ) +
    geom_line() +
    geom_hline(yintercept = threshhold, color = "red", linetype = 2)
}
