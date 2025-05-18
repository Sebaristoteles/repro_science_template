library(dplyr)
library(gt)

summary_table <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(mean_lifeExp = round(mean(lifeExp), 1), mean_gdpPercap = round(mean(gdpPercap), 1))

# Create a gt table and save as .tex
temp_tex <- tempfile(fileext = ".tex")
summary_table_gt <- summary_table %>%
  gt() %>%
  tab_caption(
    "Summary Statistics by Continent (2007) \\label{tab:summary-table}"# becomes caption
  )

gt::gtsave(summary_table_gt, temp_tex, latex_engine = "pdflatex")

# Read, fix caption, and save to final location
tex_code <- readLines(temp_tex)

# Fix the main caption: remove \textbackslash and the escaping of curly braces
tex_code <- gsub("\\\\textbackslash\\{\\}", "\\\\", tex_code)
tex_code <- gsub("\\{", "{", tex_code, fixed = TRUE)
tex_code <- gsub("\\}", "}", tex_code, fixed = TRUE)
writeLines(tex_code, here::here("output", "tables", "summary_table.tex"))
