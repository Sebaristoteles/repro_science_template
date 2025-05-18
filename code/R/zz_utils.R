library(here)

# copy references bib file to repostories of usage (e.g., paper, poster, etc.)
copy_bib <- function() {
  
  bib_orig <- here("doc", "references", "references.bib")
  
  bib_dest <- here("doc", "paper", "references.bib")
  if (file.exists(here("doc", "paper"))) {
    file.copy(bib_orig, bib_dest)
  }
  
  bib_dest <- here("doc", "poster", "references.bib")
  if (file.exists(here("doc", "poster"))) {
    file.copy(bib_orig, bib_dest)
  }
}