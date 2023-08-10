---
title: Hello, Quarto
date: "2023-08-10"
authors: [admin] # this is specific to wowchemy
categories: 
  - Website
  - Coding
format: hugo-md
#jupyter: python3

toc: true
filters:
  - ../../../scripts/doi2cite.lua
  - quarto
bibliography:
  - '__from_DOI.bib'
  
csl: https://raw.githubusercontent.com/citation-style-language/styles/0749a19b8306f2e8dcb9bf1a2e3a6992666030ac/nature.csl
---

-   [Quarto Document](#quarto-document)
    -   [R code](#r-code)
    -   [Python](#python)

## Quarto Document

Quarto enables you to weave together content and executable code into a finished document. To learn more about Quarto see <https://quarto.org>.

Now I add a citation to a doi<sup>1</sup>

### R code

<img src="https://raw.githubusercontent.com/quarto-dev/quarto-web/main/docs/get-started/hello/rstudio/lter_penguins.png" style="float:right;" data-fig-alt="Illustration of three species of Palmer Archipelago penguins: Chinstrap, Gentoo, and Adelie. Artwork by @allison_horst." width="401" />

The `penguins` data from the [**palmerpenguins**](https://allisonhorst.github.io/palmerpenguins "palmerpenguins R package") package contains size measurements for 344 penguins from three species observed on three islands in the Palmer Archipelago, Antarctica.

The plot below shows the relationship between flipper and bill lengths of these penguins.

<img src="index.markdown_strict_files/figure-markdown_strict/plot-penguins-1.png" width="768" />

### Python

And now I use python in the same document see the [Figure 1](#fig-polar).

> **Note**
>
> I needed to install `nbclient` using pip to make it work.

<img src="index.markdown_strict_files/figure-markdown_strict/fig-polar-1.png" id="fig-polar" width="768" alt="Figure 1: A line plot on a polar axis" />

<span class="csl-left-margin">1. </span><span class="csl-right-inline">McMurdie, P. J. & Holmes, S. [Phyloseq: An r package for reproducible interactive analysis and graphics of microbiome census data](https://doi.org/10.1371/journal.pone.0061217). *PLoS ONE* **8**, e61217 (2013).</span>
