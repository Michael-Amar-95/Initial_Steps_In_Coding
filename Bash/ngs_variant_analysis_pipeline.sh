#! /bin/sh
#variable declaration
currentDir="..../currentDir/";
rawDir_path=${currentDir}"/raw";
fastqc_path=${currentDir}"/fastqc";
bwaIndex_dir=${currentDir}"/genome/bwa_index";
aligendFiles_dir=${currentDir}"/aligned/";
vcf_dir=${currentDir}"/VCF/";
mkdir -p $currentDir;
mkdir -p $rawDir_path;
mkdir -p $fastqc_path;
mkdir -p $bwaIndex_dir;
mkdir -p $aligendFiles_dir;
mkdir -p $vcf_dir;

#download the samples
cd $currentDir;
fastq-dump --gzip -X 1000000 -O $rawDir_path --split-files SRR9114713; #control 
fastq-dump --gzip -X 1000000 -O $rawDir_path --split-files SRR9114680; #drunk 

${rawDir_path}/"SRR9114713.fastq.gz"

#fastqc the samples
fastqc -o $fastqc_path ${rawDir_path}/"SRR9114713_1.fastq.gz" ${rawDir_path}/"SRR9114713_2.fastq.gz" ${rawDir_path}/"SRR9114680_1.fastq.gz" ${rawDir_path}/"SRR9114680_2.fastq.gz" 
explorer.exe . #works only in wsl

#bwa index
cd $bwaIndex_dir;
wget https://hgdownload.soe.ucsc.edu/goldenPath/hg38/chromosomes/chr10.fa.gz;
zcat chr10.fa.gz > chr10.fa;
bwa index "chr10.fa";

#bwa aligment
cd $aligendFiles_dir;
bwa mem ${bwaIndex_dir}"/chr10.fa" ${rawDir_path}"/SRR9114713_1.fastq.gz"  > SRR9114713.sam
bwa mem ${bwaIndex_dir}"/chr10.fa" ${rawDir_path}"/SRR9114680_1.fastq.gz"  > SRR9114680.sam

#check files
samtools flagstat "SRR9114713.sam"
samtools flagstat "SRR9114680.sam"

#convert to binary
samtools view -Sb "SRR9114713.sam" > "SRR9114713.bam"
samtools view -Sb "SRR9114680.sam" > "SRR9114680.bam"
samtools view "SRR9114713.bam" | wc -l
samtools view "SRR9114680.bam" | wc -l

#remove the unmapped and sort
samtools view -b -F 4 "SRR9114713.bam"  | samtools sort > "SRR9114713_noUnmappad.bam"
samtools view -b -F 4 "SRR9114680.bam"  | samtools sort > "SRR9114680_noUnmappad.bam"

#create vcf files
bcftools mpileup -Ov -f ${bwaIndex_dir}"/chr10.fa" "SRR9114713_noUnmappad.bam" | bcftools call -mv -o ${vcf_dir}"/SRR9114713.vcf"
bcftools mpileup -Ov -f ${bwaIndex_dir}"/chr10.fa" "SRR9114680_noUnmappad.bam" | bcftools call -mv -o ${vcf_dir}"/SRR9114680.vcf"

#statistics
bcftools stats ${vcf_dir}"/SRR9114713.vcf"
bcftools stats ${vcf_dir}"/SRR9114680.vcf"

#Find mutations
cd $vcf_dir
cat SRR9114713.vcf  | awk '!/^ *#/ {print $0}' | awk '($4 == "A" && $5 == "G")||($4 == "C" && $5 == "T") {print $0}' > SRR9114713mutation.vcf
cat SRR9114680.vcf  | awk '!/^ *#/ {print $0}' | awk '($4 == "A" && $5 == "G")||($4 == "C" && $5 == "T") {print $0}' > SRR9114680mutation.vcf

# convert vcf file to bed file
vcf2bed <"SRR9114713mutation.vcf"> "SRR9114713mutation_bed.txt"
vcf2bed <"SRR9114680mutation.vcf"> "SRR9114680mutation_bed.txt"

# intersection between bed to table browser
intersectBed -a SRR9114713mutation_bed.txt -b genes
intersectBed -a SRR9114680mutation_bed.txt -b genes

# intersection between bed to table browser = clinvar
intersectBed -a SRR9114713mutation_bed.txt -b clinVar
intersectBed -a SRR9114680mutation_bed.txt -b clinVar
