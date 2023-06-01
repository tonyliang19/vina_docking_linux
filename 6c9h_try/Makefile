# run this to dock

# 1. First step, prepares receptor
receptor:
	prepare_receptor -r data/6C9H_B.pdb -o output/b_receptor.pdbqt


# 2. Second step, prepare ligand, have to load a binary inside the vina conda environment
CONDA=/home/tonyliang19/miniconda/envs/vina/bin
ligand:
	${CONDA}/mk_prepare_ligand.py -i data/AMP_ideal.sdf -o output/amp_ligand.pdbqt

# 3. Runs the docking, which depends on receptor, and ligand
dock: receptor ligand
	vina --receptor output/b_receptor.pdbqt \
	     --ligand output/amp_ligand.pdbqt \
	     --config config/vina_box.txt \
	     --exhaustiveness=16 \
	     --out output/try_vina_out.pdbqt

# Optional to run, you could always run make clean, and then make dock, you should have everything out
clean:
	rm output/*
