#!/usr/env/bin/bash 

# MODIFY THIS, must be equal to config file data dir
DATA_DIR=/home/ubuntu/Data

mkdir -p $DATA_DIR
mkdir -p $DATA_DIR/open_targets_26_09

OT_DIR=$DATA_DIR/open_targets_26_09

###################################################################################################
# OPEN TARGETS DATA 
###################################################################################################

if [ ! -e $OT_DIR/disease ]; then
    echo "Downloading disease info from OT release June 2026"
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/disease $OT_DIR/.
fi

# Information about genes
if [ ! -e $OT_DIR/target ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/target $OT_DIR/.
fi


# Associations
if [ ! -e $OT_DIR/association_by_datasource_indirect ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/association_by_datasource_indirect $OT_DIR/.
fi

# direct associations
if [ ! -e $OT_DIR/association_by_datasource_direct ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/association_by_datasource_direct $OT_DIR/.
fi
: '
# Study 

if [ ! -e $OT_DIR/study ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/study $OT_DIR/.
fi

# Credible sets
if [ ! -e $OT_DIR/credible_set ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/credible_set $OT_DIR/.
fi

if [ ! -e $OT_DIR/evidence_gwas_credible_sets ]; then
    rsync -rpltvz --delete rsync.ebi.ac.uk::pub/databases/opentargets/platform/26.09/output/evidence_gwas_credible_sets $OT_DIR/.
fi

'