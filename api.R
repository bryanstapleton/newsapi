library(dplyr)
library(readr)
df1 <- data.frame(x = c(1, 1, 2), y = 1:3)
df2 <- data.frame(x = c(1, 2, 2), z = letters[1:3])
left_join(df1, df2, by = "x", relationship = "many-to-many")
path <- tempfile()
write_csv(df1, path)
read_csv(path, show_col_types = FALSE)

