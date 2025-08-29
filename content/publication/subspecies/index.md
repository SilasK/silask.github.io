---
title: "Subspecies of the human gut microbiota carry implicit information for in-depth microbiome research"

# Authors
# If you created a profile for a user (e.g. the default `admin` user), write the username (folder name) here
# and it will be replaced with their full name and linked to their profile.
authors:
- Matija Tričković
- admin
- Evgeny M. Zdobnov
- Mirko Trajkovski
# Author notes (optional)
# author_notes:
# - "Equal contribution"
# - "Equal contribution"

date: "2025-08-25"
doi: "10.1016/j.chom.2025.07.015"




# Schedule page publish date (NOT publication's date).
publishDate: "2025-08-13"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
# publication_types: ["2"]

commentable: true

# Publication name and optional abbreviated publication name.
publication: In Cell Host & Microbe
#publication_short: In *ICW*

abstract: Microbial strains within a single species can exhibit distinct functional characteristics due to variations in gene content and often show individual specificity, which can obscure unbiased associations and hinder deductive research. Here, we comprehensively define the human gut microbiota at a consistently annotated operational subspecies unit (OSU) resolution in an unbiased, cohort-independent manner, demonstrating that this approach can generalize across diverse global populations while maintaining specificity and improving interstudy reproducibility. We develop panhashome—a sketching-based method for rapid subspecies and species quantification and identification of genes that drive intraspecies variations—and show that subspecies carry implicit information undetectable at the species level. We identify subspecies associated with colorectal cancer (CRC) whose sibling subspecies or species are not, while a machinelearning CRC diagnostic algorithm based on subspecies outperformed species-level methods. This subspecies catalog allows identification of genes that drive functional differences between subspecies as a fundamental step in mechanistically understanding microbiome-phenotype interactions.

# Summary. An optional shortened abstract.
summary: "Tričković et al. develop a comprehensive genomic human gut microbiota subspecies catalog by defining operational subspecies units (OSUs) in an unbiased, cohort-independent manner. Panhashome, a sketching-based method, enables rapid OSU quantification and identification of genes driving intraspecies variations. A subspecies-based machine-learning CRC diagnostic algorithm outperforms species-level methods by leveraging subspecies-level information."

tags: [subspecies, mags, metagenomics]

# Display this page in the Featured widget?
featured: true

# Custom links (uncomment lines below)
# links:
# - name: Custom Link
#   url: http://example.org

url_pdf: 'https://www.cell.com/cell-host-microbe/pdfExtended/S1931-3128(25)00287-2'
url_code: 'https://github.com/trajkovski-lab/humsub'
url_dataset: 'https://zenodo.org/records/15862096'
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, place an image named `featured.jpg/png` in your page's folder.
# Placement options: 1 = Full column width, 2 = Out-set, 3 = Screen-width
# Focal point options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
# Set `preview_only` to `true` to just use the image for thumbnails.
image:
  placement: 2
  #caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/pLCdAaMFLTE)'
  focal_point: "top"
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
  - subspecies

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
# slides: "example"
---


New paper out: Subspecies of the human gut microbiota carry implicit information for in-depth microbiome research.


Most microbiome studies stop at the species level. But strains within a species can differ dramatically in function. This obscures associations and limits reproducibility.

Going down to the strain-level isn't useful for most comparative studies, because everyone has person-specific strains for most of their microbes!
We need an intermediate level: Subspecies.

We developed an unsupervised method to cluster genomes into operational subspecies units (OSUs) and built HuMSub: the most comprehensive catalog of human gut microbiota subspecies (5,361 OSUs across 977 species).
We found that 1/3 of species in the human gut have subspecies, most of which we knew nothing about.

We created a sourmash-based method for fast & accurate subspecies quantification, enabling large-scale analysis across entire datasets, e.g., the whole SRA.

Why it matters: Subspecies explain disease associations invisible at the species level. For example, in colorectal cancer, subspecies-based ML models consistently outperformed species-level ones.

We found many cases where only one subspecies associates with disease while sibling-subspecies don't. Sometimes no association is detected at species level because opposing subspecies associations cancel each other out.

Because our subspecies are genome-based, we can identify specific genes or mutations that explain differential associations. This provides a direct path to mechanistic understanding.