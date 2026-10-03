**Bourne Shell** `sh`. Bourne Again Shell

`ls`
- `ls -l` long listing
- `ls -a` all files
- `ls -h` human readable sizes
- `ls -t` sorts by modification time, desc. 
- `ls -r` reverse order
- `ls -R` recursive listing. 
- `ls -S` sort by size desc. 
- `ls -1` one file per line. 
- `ls -d` directories
- `ls -F` Append Indicator. For directories `/` , `*` for executable. 


<br/><br/>

`cd`
- `cd ..` parent folder
- `cd ~` home directory
- `cd -` previous directory
- `cd /` root directory


<br/><br/>

`pwd`
- `pwd -L` logical path, symbolic links. default behavior.
- `pwd -P` physical path, resolves symbolic links. 


<br/><br/>

`echo`
- `echo -n` don't add new line at end
- `echo -e` allow special characters `\n` for new line
- `echo -E` don't allow special characters


<br/><br/>

`cat`
- `cat -n` add numbers to each line
- `cat -b` add numbers to non blank lines
- `cat -s` suppress empty lines
- `cat -v` makes non printing characters visible. 



## Scripting

`#!` shebang. `/bin/bash` path to bash

`chmod +x file.sh` to make it executable. 

`./file.sh` to run it. 

Bash variables are untyped. `my_name=vinay` (no spaces) `echo $my_name` or `echo ${my_name}`

Context determines if bash treats them as text or numbers. 

Use `$((...))` for integer math. `/` integer division, rounds down. 

Bash doesn't support floating point arithmetic by default. Pipe to `bc`


`==` `-eq`
`!=` `-ne`
`>` `-gt`
`<` `-lt`
`-ge`
`-le`

`-f` file exists
`-d` dir exists
`-s` file exists and not empty
`-x` file is executable

`if` `elif` `else` `fi` - `[[ ... ]];`

`for letter in "a" "b" "c"; do` `done`
`for i in {1..5}; do` `done`
`for ((i=0; i<3; i++)); do` `done`


`while [[$COUNT -gt 0]]; do` `((COUNT--))` `done`







