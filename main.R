library(tercen)
library(dplyr)

ctx = tercenCtx()

ctx  %>% 
  select(.y, .ci, .ri) %>% 
  mutate(n_cores = parallel::detect_cores()) %>%
  ctx$addNamespace() %>%
  ctx$save()
