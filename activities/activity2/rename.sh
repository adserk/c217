TODAY="date +%Y%m%d"
for f in *.txt; do mv -- "$f" "${f%.txt}_`$TODAY`.txt"; done

