# Overleaf - R - Reproducible Science Template

## Overview

This project provides a reproducible workflow for scientific writing that combines the collaborative writing features of Overleaf (LaTeX) with a robust R pipeline for generating figures and tables. All components are version-controlled using Git, ensuring transparency, reproducibility, and ease of collaboration.

In principle, you can replace the R pipeline with any other programming language (e.g., Python, Julia, Stata). The only requirement is that the output of the pipeline are pictures or LaTeX file that can be included in the main manuscript.

## Features

- **Seamless integration of R and LaTeX:** Automatically generate publication-ready figures and tables from R and include them in your LaTeX manuscript.
- **Reproducible data analysis:** All data processing, analysis, and visualization steps are scripted in R.
- **Version control:** All code, and manuscript files are tracked with Git.
- **Collaborative writing:** Write and edit the manuscript in Overleaf.


## How It Works

1. **Reproducibility:**  
   Running `00_main.R` will execute the entire R pipeline, updating all figures and tables automatically. Adjust the code in `code/R/` and add new intermediate steps to modify data processing or analysis steps.

2. **Manuscript Writing:**  
   The main manuscript (`main.tex`) includes all chapters and references the generated figures and tables. Citations are managed with BibTeX and formatted in APA style.

3. **References:**  
   The bibliography is managed with BibTeX, and the `references.bib` file contains all references used in the manuscript. A process generating the bibtex file from a shared literature management system (e.g., Zotero, Mendeley) is recommended to avoid intermingling of automatic updates with adjustments made by hand.


## Getting Started

0. **Prerequisites:**
   - Install [R](https://cran.r-project.org/) and [RStudio](https://www.rstudio.com/products/rstudio/download/).
   - Create an [Overleaf](https://www.overleaf.com/). For collaborative writing, you will need a Premium Account.
   - Install [Git](https://git-scm.com/) for version control.

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/repro_science_template.git
   ```

2. **Install R dependencies:**
   - Open R and run:
     ```r
     install.packages(c("dplyr", "ggplot2", "ggrepel", "gt", "here", "gapminder"))
     ```

3. **Run the R pipeline:**
   - In R:
     ```r
     source("code/R/00_main.R")
     ```

4. **Compile the manuscript:**
   - Open `doc/paper/main.tex` in a shared Overleaf project.
   - Compile to PDF.
   - Alternatively, if you work alone, you can compile the LaTeX document locally using a LaTeX editor (e.g., VS Code with LaTeX Workshop, etc.).


5. **Create own Git(hub) repository:**
   - Create a new repository on GitHub.
   - Add your project as remote repository
   - push your local repository to Git(hub)

6. **Connect Overleaf with GitHub:**
   - In Overleaf, go to the project settings and connect your Overleaf project with your Git(hub) repository.
   - This allows you to push changes from Overleaf to GitHub and pull changes from GitHub to Overleaf.
   - Create a new project in Overleaf and select the option to import from GitHub.
   - Select the repository you just created and import it.
   - You can commit and push changes from Overleaf to GitHub, and pull changes from GitHub to Overleaf.

## Maintainer

Sebastian Geschonke | [@Sebaristoteles](https://github.com/Sebaristoteles)

---

For questions or contributions, please open an issue or pull request.