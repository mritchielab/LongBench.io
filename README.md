<img src="https://mritchielab.github.io/LongBench.io/images/logo.png" alt="LongBench Logo" width="200"/>

# LongBench: a  multi-platform reference dataset spanning bulk, single-cell, and single-nucleus transcriptomics across eight human lung cancer cell lines with synthetic spike-in controls.

## Introduction:
LongBench is a comprehensive benchmarking dataset designed to fill these critical gaps. Derived from eight lung cancer cell lines with synthetic RNA spike-ins, LongBench includes bulk, single-cell, and single-nucleus RNA-seq data from three state-of-the-art long-read sequencing platforms — ONT PCR-cDNA, ONT direct RNA, and PacBio Kinnex — alongside Illumina short-read data for robust cross-platform comparisons.

The LongBench dataset is a valuable resource for benchmarking and improving sequencing protocols and bioinformatics tools. With the LongBench dataset we present a systematic evaluation of transcript capture, quantification, and differential expression analyses, examining the strengths and limitations of each sequencing platform in various biological contexts, enabling researchers to make more informed decisions on platform and method selection.
<img src="https://mritchielab.github.io/LongBench.io/longbench-data-description/Figure1.png" alt="LongBench Logo" width="1000"/>

More details of the dataset can be found [here](https://mritchielab.github.io/LongBench.io/longbench-data-description/).

## Content
- [Applications](#applications)
- [Accessing the LongBench Dataset on AWS S3](#accessing-the-longbench-dataset-on-aws-s3)
- [Data Analysis Tutorials](#data-analysis-tutorials-and-workflows)
- [Citing the LongBench project](#citing-the-LongBench-project)


## Applications
Some example applications of the LongBench dataset include:
- **Studying biological questions** including isoform diversity, variant calling, allele-specific expression, and RNA modifications across lung cancer subtypes.
- **Benchmarking analysis tools and method development** for isoform quantification, differential expression (DE), differential transcript usage (DTU), and variant calling.
- **Cross-platform comparisons** of accuracy, sensitivity, and biases between ONT, PacBio, and Illumina sequencing technologies.

## Accessing the LongBench Dataset on AWS S3

The LongBench dataset is hosted on AWS S3 for direct access. To download the data:

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
Sequencing data is available from Gene Expression Omnibus under accession number GSE303762. LongBench manuscript will available soon.
