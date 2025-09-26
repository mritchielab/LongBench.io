<img src="https://mritchielab.github.io/LongBench.io/images/logo.png" alt="LongBench Logo" width="200"/>

# LongBench: a  multi-platform reference dataset spanning bulk, single-cell, and single-nucleus transcriptomics across eight human lung cancer cell lines with synthetic spike-in controls.

## Content
- [Introduction](#introduction)
- [Applications](#applications)
- [Data Availability](#data-availability)
- [Data Analysis Tutorials](#data-analysis-tutorials-and-workflows)
- [Citing the LongBench project](#citing-the-longbench-project)


## Introduction:
LongBench is a comprehensive benchmarking dataset designed to fill these critical gaps. Derived from eight lung cancer cell lines with synthetic RNA spike-ins, LongBench includes bulk, single-cell, and single-nucleus RNA-seq data from three state-of-the-art long-read sequencing platforms — ONT PCR-cDNA, ONT direct RNA, and PacBio Kinnex — alongside Illumina short-read data for robust cross-platform comparisons.

The LongBench dataset is a valuable resource for benchmarking and improving sequencing protocols and bioinformatics tools. With the LongBench dataset we present a systematic evaluation of transcript capture, quantification, and differential expression analyses, examining the strengths and limitations of each sequencing platform in various biological contexts, enabling researchers to make more informed decisions on platform and method selection.
<img src="https://mritchielab.github.io/LongBench.io/longbench-data-description/Figure1.png" alt="LongBench Logo" width="1000"/>

More details of the dataset can be found [here](https://mritchielab.github.io/LongBench.io/longbench-data-description/).

## Content
- [Applications](#applications)
- [Data Availability](#data-availability)
- [Data Analysis Tutorials](#data-analysis-tutorials-and-workflows)
- [Citing the LongBench project](#citing-the-longbench-project)


## Applications
Some example applications of the LongBench dataset include:
- **Studying biological questions** including isoform diversity, variant calling, allele-specific expression, and RNA modifications across lung cancer subtypes.
- **Benchmarking analysis tools and method development** for isoform quantification, differential expression (DE), differential transcript usage (DTU), and variant calling.
- **Cross-platform comparisons** of accuracy, sensitivity, and biases between ONT, PacBio, and Illumina sequencing technologies.

## Data Availability

The **LongBench dataset** is publicly hosted on AWS S3 and includes:

- **raw FASTQ** – bulk, single-cell, and single-nucleus RNA-seq
- **POD5 files** – ONT direct-RNA reads for RNA-modification analysis
- **Count matrices** - processed gene/transcript expression tables
- **Cell line annotation** - metadata for single-cell and single-nucleus datasets

### Download Instructions

**Install the AWS CLI**:  
   ```bash
   pip install awscli
   ```
   **list data in the s3 bucket**
   ```bash
   aws s3 ls s3://longbench-data/ --no-sign-request
   ```
   **Download data**
  ```bash
   aws s3 sync s3://longbench-data/<dir name> <local dir name> --no-sign-request
   ```


## Data Analysis Tutorials and Workflows
The following tutorials are available that demonstrate how to analyse the LongBench data:

- [Bulk RNA-seq Differential analysis with edgeR](https://mritchielab.github.io/LongBench.io/bulk-de-benchmarking/)
- [Single-cell RNA-seq analysis with Seurat (Coming soon)]()


## Citing the LongBench project
If you use the LongBench dataset, please cite:

Yupei You, Ashleigh Solano, James Lancaster, Margaux David, Changqing Wang, Shian Su, Kathleen Zeglinski, Reza Ghamsari, Manveer Chauhan, Josie Gleeson, Yair D. J. Prawer, Jin Ng, Benedicte Dubois, Isabelle Cleynen, Marie-Liesse Asselin-Labat, Kate D. Sutherland, Michael B. Clark, Quentin Gouil, Matthew E. Ritchie.
Benchmarking long-read RNA-sequencing technologies with LongBench: a cross-platform reference dataset profiling cancer cell lines with bulk and single-cell approaches.
bioRxiv 2025.09.11.675724. https://doi.org/10.1101/2025.09.11.675724
