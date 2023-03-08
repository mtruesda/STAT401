rm(list = ls())
exactly_one_cell <- function(n) {
  num_filled_cells = length(unique(sample.int(n, n, replace = TRUE)))
  if (num_filled_cells == n-1){
    return(1)
  }
  return(0)
}
exp_run_times = 1000
for(n in c(3, 6, 9, 15)) {
  successes = sum(replicate(exp_run_times, exactly_one_cell(n)))/exp_run_times
  theoretical_value <- choose(n, 2)*factorial(n)/(n^n)
  print(abs(successes - theoretical_value))
}

# Upon repeated runs of this code, the difference in theoretical value
# and the experimental value are close. The most it tends to differ by is 0.01
