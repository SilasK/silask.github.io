---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "3 ways to improve genome catalogs"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2022-02-22T08:24:09+01:00
lastmod: 2022-02-22T08:24:09+01:00
featured: true
draft: false

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

Metagenomics has revoluzionized microbiology. This sequencing thechnology enables researchers to gain insight in in the composition and functional potential of a microbial comunity _in situu_. Even, though it is called meta**genomics** the sequenced reads were not analyzed on a genome level, due to technical limitations, especially the lack of reference genomes for many microbiomes. 

In 2017, Parks _et al._ published nearly 8,000 metagenome-assembled genomes (MAGs), which substantially expanded the tree of life^[@Parks2017]. Since then we entered in a **era of large-scale (re-)assembly in metagenomics**. Many researcher started to assemble MAGs from various metagenomes, often recovering dozens of new species. 
2017 marks also the year of the beginning of my PhD. So I had the oportunity to to my PhD during this exiting time. I worked mainly on [a pipline]({{< relref "/publication/atlas" >}}) that allows to produce such MAG catalogs with only three commands. We applied our pipeline to all the samples from the mouse genome in order to recover a [comprehensive catalog of genomes for this microbiome]({{< relref "/publication/CMMG" >}}).

With this study now published I reflect on what can could be improved for the benefic for oththers that take the challenge to create comprehensive catalogs for their microbime of interest. 


# 1.	Use co-binning

Most studies use single-sample assembly and binning, because each sample can be processed in paralell, which makes the aproach very scalable. The downside of this aproach is that the coverage information from only one sample is used. But using the _differenctial coverage_ from multiple samples can be very usefull for binning. There are alternatives, co-assembly and cross-mapping, which allow for the use of differencial abundance, but they have their own problems and challanges [^1]. 

[^1]: For a more detailed informations on the different binning aproaches see [my thesis]({{< relref "../phd-thesis/" >}}) p.14, and [my course]({{< relref "/event/finnland-course" >}}).

Recently, a new strategy for binning was developped, which I call *Co-Binning*[^2]. The strategy works as folows:
1. Assemble each sample seperately
2. Concatenate the assembly of all samples to one
3. Map the reads from all samples to the concatenated assembly
4. Bin the contigs from each sample seperatly, but use the differencial abundance from all samples.

This strategy more or less combines the advantages of the other binning strategies. It doesn't require co-assembly, allows for the use of differencial abundance and scales to many samples (~100). In this strategy is implemented in the two tools *Vamb*^[@Nissen2021] and *SemiBin*^[@Semibin]. The authors of Vamb also claim that it can disentangle genomes from different subspecies up to 97% ANI, which I find quite interesting. SemiBin in addition uses not only the abundance but also the taxonomic annotation. Both binners could in theory also be used for Eukaryote binning. The only adaptation to SemiBin would be to use a taxonomic annotation that includes Eukaryotes.  

So, If you plan to recover many genomes from metagenomes think about trying out these new binners. I already implemented both binners in metagenome-atlas.

[^2]: The aproach is called *multisplit* in the publication of Vamb.


# 2.	Optimize quality estimation

Now the second step comes after the realization that the MAGs are not as good as we think  -- even the "high-quality". Part has to do with the fact that MAGs are just of bad quality due to limitations of the computational pipelines. Manual curation is needed^[@Chen2020].
But part has to do that the quality estimators tell us they are of good quality, when in reality they are not. 

## Use up-to-date databases for genome evaluation
The whole field uses checkM, which is a very nice and neat tool most. However its database was not updated since 2015! Probably there will be soon a V2 of the tool be released, but in the meantime one can *use BUSCO* which works in a similar way, is based on the up-to-date OrthoDB markers and works also for eukaryotes. 

## Don't automatically select marker-gene

CheckM and BUSCO automatically select the most appropriate marker-gene-set for evaluation. This is very handy, but it might also bias the results. For example, a genome is very incomplete. It's taxonomic lineace cannot be determined, whcih caused it to be evaluated at the most basic level. If by chance it contains many of the basic marker genes, which often cluster together in operons it's estimated as highly complete.  

If the genome in question is from a completely new species, there is no way to cirumvent this and it's good that the more unknown genomes are evaluated at more basic levels. However, if the genome belongs to an abundant species, you likely have houndreds of other genomes from the same species (in a radius of 95% ANI). In the worst case a bad genome evaluated at the most basic level could be estimated to have better quality than other genomes evaluated with the more extended marker gene sets.

If you have multiple genomes of the same species, which you have if you do create a genome collection, you want them to be all evaluated with the same marker gene set. Together with Matija Trikovic, we made [a snakemake pipeline](https://github.com/trajkovski-lab/Quality-filtering) that does exaclty this. 

We re-analyzed genomes from the UHGG and HumGut databases with BUSCO and the same set for each genome. What was estimated by Checkm to be 99% complete came out less than 50% for some genomes. This has to do with both effects. 1. BUSCO has more up-to-date database and 2. We evaluated genomes from the same species cluster not autmatically but with the same marker genes as the representative. 

## Ad-hoc quality estimation
This is more an idea than a concrete advice. If you have many genomes from the same species (or higher taxonomic clade) from a specific environment, then per definition you would have the best set of genomes to evaluate the completeness. You could define an ad-hoc set of marker genes, e.g. genes at 95% identity that are present in >90% of the genomes. Then you turn it around and ask how many genomes have >90% of these genes. It helps to refine completeness for a given species.

# 2.	Filter chimeric genomes
The ad-hoc quality estimation doesn't help with contamination. But recently new tools came out that check if genomes are chimeric. For example GUNG^[@GUNC2021]. By taxonomically annotating contigs they allow to identify contigs with incongruent taxonomy, aka chimera. This is obviouly reference based but it allows for filtering with much broader scope than only looking at the marker genes. 

Finally, with more and more genome catalogs out there I think the question becomes more important how to efficently use them. Most of the time we choose **1** genome per species and map reads against it or build a Kraken DB. This aproach obvioulsy glosses over much of the strain variation that is already contained in the genome collections. In some publication the authors build Kraken dbs with many genomes per species, which increases the mapping rate overall but when estimated on species level it's actually lower^[@Nasko2018].

I could write more but I leave it there for my first blog on metagenomics. If you have comments and discussion reply to the Tweet below or send me a mail. 
