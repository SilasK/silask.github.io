---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "ATLAS: a Snakemake workflow for assembly, annotation, and genomic binning of metagenome sequence data"

authors: ["Silas Kieser", "Joseph Brown", "Evgeny M. Zdobnov", "Mirko Trajkovski", "Lee Ann McCue"]
date: 2019-10-21T20:03:06+02:00
doi: "10.1101/737528"

# Schedule page publish date (NOT publication's date).
publishDate: 2019-10-21T20:03:06+02:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "bioRxiv"
publication_short: "bioRxiv"

abstract: "*Background:* Metagenomics and metatranscriptomics studies provide valuable insight into the composition and function of microbial populations from diverse environments, however the data processing pipelines that rely on mapping reads to gene catalogs or genome databases for cultured strains yield results that underrepresent the genes and functional potential of uncultured microbes. Recent improvements in sequence assembly methods have eased the reliance on genome databases, thereby allowing the recovery of genomes from uncultured microbes. However, configuring these tools, linking them with advanced binning and annotation tools, and maintaining provenance of the processing continues to be challenging for researchers.
*Results:* Here we present ATLAS, a software package for customizable data processing from raw sequence reads to functional and taxonomic annotations using state-of-the-art tools to assemble, annotate, quantify, and bin metagenome and metatranscriptome data. Genome-centric resolution and abundance estimates are provided for each sample in a dataset. ATLAS is written in Python and the workflow implemented in Snakemake; it operates in a Linux environment, and is compatible with Python 3.5+ and Anaconda 3+ versions. The source code for ATLAS is freely available, distributed under a BSD-3 license.
*Conclusions:* ATLAS provides a user-friendly, modular and customizable Snakemake workflow for metagenome and metatranscriptome data processing; it is easily installable with conda and maintained as open-source on GitHub at https://github.com/metagenome-atlas/atlas."

# Summary. An optional shortened abstract.
summary: "ATLAS provides a user-friendly, modular and customizable Snakemake workflow for metagenome and metatranscriptome data processing; it is easily installable with conda and maintained as open-source on GitHub at https://github.com/metagenome-atlas/atlas."

tags: ["metagenome-atlas", "metagenome","snakemake","bioinformatics"]
categories: ["bioinformatics"]
featured: true

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf:
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: "Top"
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: ["metagenome-atlas"]

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
