#!/bin/fish
set suffix (string split -r -m 1 . $argv[1])
set path_name $suffix[1]
set suffix $suffix[-1]

set path_name (string split -r -m 1 / $path_name)
set path $path_name[1]
set name $path_name[-1]

if test (count $path_name) = 1
    set path .
end
set dir_path $path/bk
set backup_name $dir_path/$name\_$(date "+%Y%m%d-%H%M%S").$suffix

# echo $dir_path $backup_name

if not test -e $dir_path
    mkdir $dir_path
end
cp -r $argv[1] $backup_name
echo $backup_name
