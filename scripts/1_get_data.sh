#!/usr/env/bin/bash 

mkdir -p ../data
mkdir -p ../data/raw
mkdir -p ../data/quality_control

: '

GWAS_catalog="https://www.ebi.ac.uk/gwas/api/search/downloads/associations/v1.0.2?split=false"
wget $GWAS_catalog -O ../data/raw/gwas_catalog_v102.zip
unzip ../data/raw/gwas_catalog_v102.zip -d ../data/raw

rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/25.12/output/association_by_datasource_direct ../data/raw

rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/25.12/output/association_by_datatype_direct ../data/raw

EFO_OWL="https://github.com/EBISPOT/efo/releases/download/current/efo.owl"
wget $EFO_OWL -O ../data/raw/efo.owl

STRING="https://stringdb-downloads.org/download/protein.links.detailed.v12.0/9606.protein.links.detailed.v12.0.txt.gz"
wget $STRING -O ../data/raw/9606.protein.links.detailed.v12.0.txt.gz
gzip -d ../data/raw/9606.protein.links.detailed.v12.0.txt.gz

STRING_ALIAS="https://stringdb-downloads.org/download/protein.aliases.v12.0/9606.protein.aliases.v12.0.txt.gz"
wget $STRING_ALIAS -O ../data/raw/9606.protein.aliases.v12.0.txt.gz
gzip -d ../data/raw/9606.protein.aliases.v12.0.txt.gz



HNET=https://www.inetbio.org/humannet/networks/HumanNet-FN.symbol.tsv.gz
wget $HNET -O ../data/raw/hnet_functional_symbols.tsv.gz
gzip -d ../data/raw/hnet_functional_symbols.tsv.gz

'

HNET=https://www.inetbio.org/humannet/networks/HumanNet-XC.tsv.gz
wget $HNET -O ../data/raw/hnet_functional_entrez.tsv.gz
gzip -d ../data/raw/hnet_functional_entrez.tsv.gz




