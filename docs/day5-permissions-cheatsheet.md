# Day 5 — Linux Permissions Cheat Sheet

## Symbols
- r = read, w = write, x = execute
- user/group/others (u/g/o)

## Numeric
- r=4, w=2, x=1
- 7=rwx, 6=rw-, 5=r-x, 4=r--

## Common safe defaults
- Secret files (keys, env): 600
- Private dirs: 700
- Readable configs: 644
- Executable scripts: 700 or u+x (depending on need)

## Commands
- ls -la / ls -ld dir
- chmod 600 file
- chmod 700 dir
- chmod u+x script.sh
- umask
