#I want to try minimap2 for the full genomes
minimap2 Orthoebolavirus_zairense.fna Orthoebolavirus_sudanense.fna > Orthoebolavirus_zairense_v_Orthoebolavirus_sudanense.paf
jbrowse add-track Orthoebolavirus_zairense_v_Orthoebolavirus_sudanense.paf --assemblyNames=Orthoebolavirus_zairense.fna,Orthoebolavirus_sudanense.fna --load copy --out $APACHE_ROOT/jbrowse2
