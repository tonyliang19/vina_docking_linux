#!/bin/bash
chmod +x $0
# Script to install autodock vina in Linux x86-64
function man {
cat << EOF

Downloads vina binary and conda env to Linux x86-64

Usage: bash $0

EOF
}



############## Binary installation
# Make directory to store binary
BIN_DIR="$HOME/.local/bin"
VINA="${BIN_DIR}/vina"

if [ ! -d ${BIN_DIR} ]
then
    echo Creating dir now
    mkdir -pv ${BIN_DIR}
fi
echo Dir created, proceeds
echo Start to download, wait a few secs
if [ ! -f $VINA ]
then 
    URL="https://github.com/ccsb-scripps/AutoDock-Vina/releases/download/v1.2.3/vina_1.2.3_linux_x86_64"
    wget -qO- ${URL} > $VINA
    chmod +x $VINA
fi
echo 'Downloaded autodock vina binary'
############### Conda installation
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-py310_23.3.1-0-Linux-x86_64.sh"
if ! command -v conda &> /dev/null
then
    echo Downloading conda quietly now
    wget ${CONDA_URL} -qO ~/miniconda.sh
    bash ~/miniconda.sh -b -f -p $HOME/miniconda
    # Initialize PATH
    source ~/miniconda/bin/activate && conda init bash
fi
echo Conda downloaded
############### clean up
rm -f miniconda.sh
###############
echo Done, you should add $BIN_DIR to your PATH
