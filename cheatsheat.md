# GDB
* `save breakpoints breaks.txt`
* `source breaks.txt`
* `search`
* `catch throw`
* `solib-search-path`
* `sharedlibrary`
* `directory`
* `file`
* absolute path

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
* `.sympath \\192.168.100.100\mysymbolserver`
* `!analyze -v`

# Git
* `git rebase -i --root <hash>`
* `git rebase -i --preserve-merges <hash>`
* `git log --merges --first-parent --pretty="format: %h %ai %s"` - Bitbucket/Gitlab doesn't show you exact dates of PRs/MRs

# Conda
* ```~/miniconda3/condabin/conda```
* ```conda config --set auto_activate_base false```
* ```conda env list```
* ```conda create --name myenv python=3.11```
* ```conda activate myenv```
* ```conda deactivate myenv```
* ```conda install -c conda-forge jupyter```
* ```jupyter notebook```

# VSCode
* CTRL + SHIFT + P
* User settings json
* "python.venvPath": "~/miniconda3/envs"

# Python
* ```python -m venv venv_my_project```
* ```source venv_my_project/bin/activate```

# Samba
* ``` apt-get install smbclient ```
* ``` smbget smb://192.168.1.1/myfolder/myfile . ``` (30sec comparing to 20sec with mount + cp)

# perf
* ``` perf -v ``` (it will suggest you to install additional packages if needed)
* ``` perf list ```
* ``` perf stat -e event1,event2 myprogram myprogramargs```
* ``` perf record myprogram myprogramargs ```
* ``` perf report ```

# samply

* ```cargo install samply```
* Prepare server: ```npm install -g yarn && git clone git@github.com:firefox-devtools/profiler.git && cd profiler && yarn install```
* Run server: ```cd profiler && yarn start``` (If you don't run the server, you won't be able to resolve symbols)
* Run app: ```PROFILER_URL=http://127.0.0.1:4242 samply record ./myapp myapp-arg1 myapp-arg2```

# video

* bitrate rule of thumb: ```h264 ---0.5---> h265 ---0.7---> av1```

# rsync

* ```rsync -av <SRC> <DST>```

# Netwok

## Find interface that is pluged in

dmesg | grep Eth

ifconfig

netstat -i

ip link show

Network is unreachable: ```ip link set dev enp2s0 up```

Destination Host unreachable: ```ip address add 192.168.8.100/24 dev enp2s0```

ip route add 192.168.8.1 dev enp2s0

ip route add default via 192.168.8.1 dev enp2s0

/etc/resolv.conf `nameserver 8.8.8.8`

## Check if someone is already connected via RDP on windows

* `nmap -Pn <my_windows_ip>`
* `ssh 'User'@<my_windows_ip>`
* `netstat -t` - search the output for 3389 port

## ZFS boot problems
* Boot with ```systemd.confirm_spawn=true``` to identify the problem.
* Corrupted file at `/etc/zfs/zpool.cache` can cause problems.
    * No disk space can lead to this
    * Or other unplanned manipulation of the file
* ```zpool status```
* ```mv /etc/zfs/zpool.cache /etc/zfs/zpool.cache.backup```
* ```zpool import -a```
* ```zfs-import.service``` 

# Linux boot
grub shell

rdinit
rd.break

systemd boot options
init=/bin/bash
emergency
rescue

## Manjaro network problem
* `inxi -Nazy`
* `lsmod`
* ```sudo modprobe -r ath10k_pci```
* Loading of the kernel module should find the network device: ```sudo modprobe ath10k_pci``` 

