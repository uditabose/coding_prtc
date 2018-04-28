#!/bin/bash

for f in "$@"; do
    fsh="$f.sh"
    touch "$fsh" && chmod +x "$fsh"
    echo "#!/bin/bash" >> "$fsh"
    echo " " >> "$fsh"
    echo "source colors.sh" >> "$fsh"
done