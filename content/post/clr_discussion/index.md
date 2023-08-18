---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Discussion about centered log ratio transformation"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2023-03-21T13:39:00+01:00
lastmod: 2023-03-21T13:39:00+01:00
featured: false
draft: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---



## Linits of CLR

Finaly let's keep in mind that CLR is usefull but doesn't solve all the problems. Especially id doesn't remove the fact that there is still a sum-constraint. 

See [this discussion that PCA based on CLR can be biased](https://stats.stackexchange.com/questions/305965/can-i-use-the-clr-centered-log-ratio-transformation-to-prepare-data-for-pca) and [A Critique of Differential Abundance Analysis, and Advocacy for an Alternative](https://arxiv.org/abs/2104.07266)