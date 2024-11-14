# pipe output of ls -l to this script
#
# ex: ls -l | python script.py

import sys

files = 0
dirs = 0

for line in sys.stdin:
    if line.startswith('d'):
        dirs += 1
    elif line.startswith('-'):
        files += 1

print(f"Files: {files}, Directories: {dirs}")
