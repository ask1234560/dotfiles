import subprocess
import sys

cmd = """awk -F "|" -v q=\""""+" ".join(sys.argv[1:])+"""\" 'BEGIN{gsub(/ /, ".*", q)}  { if(tolower($1) ~ q){ print $1} }' < ~/.z"""
print(cmd)

directories,error = subprocess.Popen(cmd, shell=True, executable="/bin/bash", stdout=subprocess.PIPE, stderr=subprocess.PIPE).communicate()
directories = directories.decode("utf-8", "ignore")
directories = directories.rstrip('\n').split("\n")
print(directories)

sl,os = len(directories[0]),directories[0]
for directory in directories[1:]:
    l = len(directory)
    if l < sl:
        sl = l;
        os = directory;

print("cd " + os)
