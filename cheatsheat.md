# GDB
* `save breakpoints breaks.txt`
* `source breaks.txt`
* `search`
* `catch throw`

# strace
* `strace /usr/bin/application`
* `strace -p1234 -s9999 -e write`

# Windbg
* location:
* Load pdbs no matter what: `symopt+0x40`
* kd

# Git
* `git rebase -i --root <hash>`
* `git rebase -i --preserve-merges <hash>`

# Conda
* ```~/miniconda3/condabin/conda```
* ```conda config --set auto_activate_base false```
* ```conda env list```
* ```conda create --name myenv```
* ```conda activate myenv```
* ```conda deactivate myenv```
* ```conda install -c conda-forge jupyter```
* ```jupyter notebook```
