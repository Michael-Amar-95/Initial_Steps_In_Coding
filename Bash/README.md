# Utility Scripts Collection
A collection of small scripts written during early learning stages, covering basic programming, file processing, and bioinformatics workflows.

## Scripts Overview

### 1. annotate_genes_with_scores
A shell script that enriches a BED file with additional gene-related information using a dictionary file.

**How it works:**
- Reads a BED file line by line
- Extracts the gene name from column 4
- Searches for the gene in a provided dictionary file
- Appends the corresponding value from the dictionary
- If no match is found, assigns `NA`

**Input:**
- BED file
- Dictionary file (gene name in column 1, mapped value in column 2)

**Output:**
- A modified BED format with an extra annotation column

---

### 2. circle_area_calculator
A simple AWK-based script that calculates the area of a circle.

**How it works:**
- Takes the radius as a command-line argument
- Uses a fixed approximation of π (3.14)
- Computes and prints the circle area

**Input:**
- Radius value (numeric)

**Output:**
- Calculated area of the circle

---

### 3. delimiter_replacer
A simple Bash script that replaces all occurrences of a specified delimiter in a file with a new delimiter.

**How it works:**
- Reads a file from standard input
- Uses `sed` for global text replacement
- Replaces every instance of the old delimiter with the new one

**Input:**
- File path
- Current delimiter
- New delimiter

**Output:**
- Modified file content printed to standard output

---

### 4. filter_chr3R_genes

An AWK-based script that filters genomic intervals from a BED-like file.

**Filtering criteria:**
- Chromosome is `chr3R`
- Feature length is at least 1000 bases
- Strand is positive (`+`)

**Input:**
- A BED-format file

**Output:**
- Only rows that match all filtering conditions

---

### 5. find_large_files
A Bash script that searches a directory for large files with a specific extension.

**How it works:**
- Scans a given directory using `find`
- Filters files by extension
- Returns only files larger than a specified size threshold

**Input:**
- Directory path
- Minimum file size (as supported by `find`, e.g. `10M`)
- File extension

**Output:**
- Paths of files that match the criteria

---

### 6. gccfind
A Bash script that searches C source files for a given keyword and compiles the matching files using `gcc`.

**How it works:**
- Searches `.c` files in a specified directory for a keyword (case-insensitive, whole word)
- Removes existing `.out` files before compiling
- Compiles only files that contain the keyword
- Supports optional recursive search with the `-r` flag

**Input:**
- Directory path
- Search keyword
- Optional `-r` flag for recursive search

**Output:**
- Compiled `.out` executables for matching source files

---

### 7. gtf_to_bed_converter
A shell/AWK script that converts a VCF file to a BED-like format.

**How it works:**
- Splits the 10th column of the VCF file
- Extracts selected fields to create a 6-column BED-style output
- Rearranges and formats columns for downstream analysis

**Input:**
- A VCF file

**Output:**
- Tab-delimited BED-like file with selected annotations

---

### 8. ngs_variant_analysis_pipeline
A shell script that automates a basic **NGS variant analysis pipeline** for a small subset of sequencing data.

**Pipeline steps:**
1. Creates necessary directories for raw data, QC, genome index, alignment, and VCF files.
2. Downloads FASTQ samples using SRA Toolkit.
3. Performs quality control using FastQC.
4. Builds a BWA index of the reference genome (chr10) and aligns reads.
5. Converts SAM to BAM, filters unmapped reads, and sorts BAM files.
6. Calls variants using Bcftools and generates VCF files.
7. Filters specific mutation types (A→G and C→T).
8. Converts filtered VCFs to BED format.
9. Intersects BED files with gene annotations and ClinVar data for analysis.

**Main tools used:**
- SRA Toolkit (`fastq-dump`)
- FastQC
- BWA
- Samtools
- Bcftools
- Bedtools
- awk
- vcf2bed

**Input:**
- Reference genome (chr10)
- FASTQ sequencing files

**Output:**
- Filtered VCF and BED files
- QC statistics and alignment summaries
- Intersections with gene annotations and ClinVar database

---

### 9. gtf_to_bed_preview
A Bash/AWK script that converts records from a GTF-like file to BED format and prints a preview of the result.

**How it works:**
- Ignores comment lines starting with `#`
- Extracts genomic coordinates and attributes
- Converts entries to a 6-column BED-like format
- Combines selected fields into a single annotation column
- Prints only the first few lines for quick inspection

**Input:**
- A GTF-format file

**Output:**
- A tab-delimited BED-style preview (first lines only)

---

## Notes
These scripts were written for learning purposes and cover a variety of tasks, from basic scripting to introductory bioinformatics pipelines.
