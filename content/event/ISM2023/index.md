---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Tutorial at the ISMB/ECCB 2023"
event: Register
event_url: https://www.iscb.org/ismbeccb2023-programme/tutorials
location: Remote
address:
  street:
  city:
  region:
  postcode:
  country: 
summary: |
abstract:


# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: 2023-07-17T14:00:00+01:00
date_end: 2023-07-18T18:00:00+01:00
all_day: true

# Schedule page publish date (NOT event date).
publishDate: 2023-03-21T11:56:12+01:00

authors: [admin]
tags: [teaching]

# Is this a featured event? (true/false)
featured: true

commentable: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

# Optional filename of your slides within your event's folder or a URL.
url_slides:

url_code:
url_pdf:
url_video:

# Markdown Slides (optional).
#   Associate this event with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [atlas]
---


**Part 1**: Monday, July 17 (14:00 – 18:00 CEST)

**Part 2**: Tuesday, July 18 (14:00 – 18:00 CEST)


Metagenomics is transforming how we study microbiomes by enabling the analysis of entire microbial communities from diverse environments, without the need for culturing. Recent improvements in computational algorithms enable the assembly of genomes directly from metagenomic data. In this way, assembly-based metagenomics allowed the recovery of an almost unimaginable number of uncultured microbes from different environments such as the gut and ocean. However, the availability of genomes is only the start of the analysis.

In this tutorial, we will familiarize the participants with the steps required in assembly-based metagenomics (assembly, binning, Genome-completeness estimation, taxonomic and functional annotation, and pathway inference). In the hand-on session, we will use metagenome-atlas a commonly used metagenomics pipeline, that allows users to get started in three commands with their analysis. Based on a case study we show how the functional annotation of genomes can be leveraged to make sense of the data.

### Learning Objectives:

The participants will
1. Learn to assemble genomes from metagenomic reads and estimate their quality 
2. Understand the steps used of gene annotation and pathway inference
3. Use the functional and taxonomic annotation of a metagenome dataset to answer scientific questions.
   
### Intended Audience:

The workshop is intended for beginners. Participants should know what a fastq is, how to run commands in bash. They should know how to read tables in their programming language in either python or R.  For the hands-on session, the participants should bring their laptops, with a possibility to run bash (Linux, Mac, Linux subsystem for windows, docker container, remote connection to server).