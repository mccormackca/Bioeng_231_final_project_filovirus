inimap2 -x asm5 Orthoebolavirus_bombaliense_cds_from_genomic.fna Orthoebolavirus_restonense_cds_from_genomic.fna > bombaliense_restonese_cds_comparison.paf

jbrowse add-track bombaliense_restonese_cds_comparison.paf --assemblyNames=Orthoebolavirus_restonense_cds_from_genomic.fna,Orthoebolavirus_bombaliense_cds_from_genomic.fna --load copy --out $APACHE_ROOT/jbrowse2

# jbrowse add-track peach_vs_grape.paf --assemblyNames peach,grape --load copy --out /var/www/html/jbrowse