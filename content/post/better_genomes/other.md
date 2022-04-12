text from thesis that could be adapted to bogs.


Accordingly, we are about to enter a \kw{post-assembly era}, where the assembly of metagenomes is no longer necessary, and microbiomes can be profiled directly. Having comprehensive catalogs of genomes for many microbiomes is a milestone in the analysis of microbiomes\footnote{Actually, it is included in Nature's \href{https://www.nature.com/collections/bhciihjhei}{Milestones in human microbiota research (2019)} }. 
If the profiling of metagenomes is simple, it becomes even more important that we use the results effectively, as I explained in chapter~\ref{ch:coda}. 


Does this render assembly and genomic binning unnecessary? Are pipelines, like \tool{metagenome-atlas}, no longer useful?
%
Surely, there are still challenges in several non-gut metagenomes. For example skin, and lung microbiomes yield low-biomass samples and are therefore difficult to assemble. Also, soil and ocean microbiomes are more complex than the typical gut microbiome, and therefore harder to assemble\footnote{Even though, for the ocean microbiome, a significant improvement was made \parencite{Paoli2021} recently. }.
%Nevertheless, we now have reference genomes for the majority of species in many metagenomes.
But even for metagenomes with good coverage, assembly and binning can give a crucial benefit to capture dataset-specific strain variation as I explained in section~\ref{sec:atlasunits}. 


\subsection{Improving current genome collections}

The field has come a long way in recovering genomes from metagenomes, but there is still room to improve the current genome references:  First, by improving the quality of the recovered genomes. Second, by deepening the resolution by including more strain-variation and finally, by widening the scope by including plasmids, viruses, and eukaryotes.



%First of all, there is still much room to improve the quality of the genomes recovered from metagenomes. Next, the reliance solely on marker genes for the quality estimation of genomes might blind us to other sources of errors during the genome assembly and binning.
%I see three ways to improve the current genome references: 
%
%Finally, even more, important than improving the current genome references is to use them effectively, as I explain in chapter~\ref{ch:coda}. %I discuss the statistical analysis of metagenomes.

%\subsection{A comprehensive catalog of the mouse gut}

%
%

%%%%%%%%%

%
%The field has come a long way in recovering genomes from metagenomes, but there is still much room to improve the quality of the genomes recovered from metagenomes.

\subsubsection{Recover complete genomes from metagenomes}



%
% complete genomes
The genomes reconstructed from metagenomes are of variable quality.
While multiple genome reconstructions are available for highly prevalent species, and one can choose the best one as a representative, rare species are often represented only by one medium-quality MAG. 
%
Incomplete or \enquote{composite MAGs reduce the quality of public genome repositories}  \parencite{Shaiber2019}.
%
Moreover, even what is called a high-quality genome is mostly an estimation based on marker genes (See section~\ref{sec:completeness}).
%
The quality estimation is dependent on the marker gene set used. Therefore a bias in the marker gene set induces a bias in the genome estimation.
%
More fundamentally, I think genome quality estimation is overused. Metagenomic binners are evaluated on the quality score of their genome predictions. Marker genes are even used during the binning by some algorithms or by tools that combine and consolidate the results of multiple binners \parencite{dastool}.
%
I fear this to be an example of \kw{Goodhart's Law}: \enquote{When a measure becomes a target, it ceases to be a good measure.} \parencite{Strathern1997}.

%\begin{quote}
%	Goodhart's Law: When a measure becomes a target, it ceases to be a good measure.
%
%	\hfill\cite{Strathern1997}
%\end{quote}


%The quality estimation is very dependent on the marker gene set used. For instance, there are multiple definitions of the core-marker genes for all prokaryotes. The current best practice is to adapt the marker gene set to the closest phylogenetic group.


The fundamental problem of estimating the quality of a genome solely by assessing the presence and duplication of marker genes is that this approach is entirely blind to contigs that do not contain marker genes. A MAG may have many contigs from a wholly different species without affecting the contamination estimation. Similarly, a `complete' genome might still be missing genome content that is not assessed by marker genes.
%
New tools have been developed that claim to purify a MAG of this unassessed contamination (\tool{MAGpurify}, and  \tool{conterminator} \parencite{Nayfach2019, Steinegger2020}) or to search for additional contigs that were missed (\tool{Spacegraphcats} and \tool{GraphBin}  \parencite{Spacegraphcats2020,graphbin2020}).
%
However, often it is only through manual curation that one can achieve an accurate and complete genome from metagenomes \parencite{Chen2020}.

Ideally, a MAG would be assembled in one continuous sequence. For now, this only rarely happens. It is important to note that most large-scale efforts use single-sample assembly, as this approach is the most scalable. Binning methods that efficiently use differential abundance  (See box~\vpageref{box:diffab}) are promising ways to improve the continuity and quality of MAGs. 
%
\label{sec:critiquemarker} 
%
Of note, long-read sequencing, which makes assembly much easier or even superﬂuous, is becoming more common. Also, culturing of microbes from metagenomes is advancing. Both techniques have the potential to complement or even replace the recovery of genomes from metagenomes.




\subsubsection{Including subspecies diversity}

\citeallauthors{Resrev2021} postulate that we are in the middle of a \emph{resolution revolution} in microbiomics\footnote{The study of microbiomes. Metagenomics is a subfield thereof. }. Increased sampling will allow us to study the microbiome in more detail in space and over time. The third dimension in which they see resolution increase is in the taxonomic dimension.

Having recovered over 30'000 genomes for the mouse gut, we were able to investigate subspecies diversity. We were able to identify subspecies with specific gene contents. We saw a consistent \kw{strain-boundary} at ~95.5\% ANI for many species (ch.~\ref{ch:Kieser2022}  Extended Data Fig. 2). The boundary is also visible in strain comparisons based on isolates
genomes  \parencite{VanRossum2020}.
%
Below this threshold, two organisms derived from a common ancestor have practically no more genome fraction in common \parencite{Nimwegen2021}. We found many strain pairs with similarity $>95\%$ ANI because mice are coprophages and share their microbiome with other mice within a cage. 
%
By taking the subspecies into account, we were able to increase the mapping rate of a new mouse metagenome from 83 to 90\%. %Also, rarefaction analysis shows that our collection contains practically all species living in the gut of laboratory mice. We hope that our resource enables others to perform a comprehensive analysis of the mouse gut microbiome.


% CMMG other members
\subsubsection{Going beyond bacteria}
Most of the DNA in a gut microbiome comes from bacteria. However, often overlooked are organisms from the domains archaea and eukaryotes. Eukaryotes, such as fungi and protists, can be very large compared to prokaryotes and make up a sizable fraction of a microbiome's biomass without contributing an equal fraction to the metagenome (DNA). Viruses, plasmids, and other genetic elements are also essential members of microbiomes that are easily sequenced using shotgun metagenomics.

For generating the CMMG, we not only looked for MAGs of bacteria but also viruses and plasmids. We did not assemble any genomes of archaea, which let us assume that they are not living in the mouse gut of laboratory mice.    We did not look for eukaryotes. Nevertheless, we think our catalog is an important resource to perform a comprehensive analysis of the mouse gut microbiome. The inclusion of plasmids and viruses increased the mapping rate of a mouse metagenome sample from 90\% to 94\%.

\subsection{Comprehensive sets of functionally annotated genomes for the human and mouse gut}

For the update of CMMG (Sec. \ref{sec:cold}), we annotated comprehensive sets of genomes from the mouse \emph{and human gut}. We made the functional annotations publicly available, together with the code, to calculate pathway abundance and associate functional changes with the condition or treatment of interest.
%
These resources enable others to benefit from the advantages of genome-resolved metagenomics and efficiently perform functional analysis of mouse and human metagenomes.


