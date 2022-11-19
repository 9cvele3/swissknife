# GDB
* `save breakpoints breaks.txt`
* `source breaks.txt`
* `search`
* `catch throw`

# strace
* `strace /usr/bin/application`
* `strace -p1234 -s9999 -e write`

# Windbg
* Install Windbg via WinSDK (modify installation and select Debugging tools for Windows)
* Windbg is installed in `C:\Program Files(x86)\WinKits\10\Debuggers\x64\windbg.exe`
* `File -> Symbol Path`
* `File -> Source Path`
* location:
* Load pdbs no matter what: `.symopt+0x40`
* `View -> Callstack`
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

# Python
* ```python -venv venv_my_project```
* ```source venv_my_project/bin/activate```

