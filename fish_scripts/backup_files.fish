#!/bin/fish
set sp_name (string split . $argv[1])
set backup_name $sp_name[1]_$(date "+%Y%m%d-%H%M%S").$sp_name[-1]
cp -r $argv[1] $backup_name
echo $backup_name
