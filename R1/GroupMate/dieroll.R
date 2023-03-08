rm(list = ls())
n = 10000
sum_die = replicate(n, sum(sample.int(6, 2, replace = TRUE)))
rel_freq_table = table(sum_die)/n
print(rel_freq_table)
rel_freq_table[names(rel_freq_table)==4]

# The theoretical value for P(sum = 4) obtained from the homework is 1/12. 
# The empirical probabilities obtained match that closely - it is usually within
# .010
