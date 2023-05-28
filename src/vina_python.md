# AutoDock Vina Python binding installation

```bash
# create new conda env with python=3.*.*
conda create -y -n vina python=3.9.7
conda activate vina # activate the newly created env
conda config --env --ad channels conda-forge 

# install the dependencies for vina
conda install -y -c conda-forge numpy swig boost-cpp sphinx sphinx_rtd_theme
# install vina
pip install vina 
# unzip
# tar -xf vina-1.2.3.tar.gz
# cd vina-1.2.3
# # remove '.*' in line 361 at setup.py
# python setup.py install
```