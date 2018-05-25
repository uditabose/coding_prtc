#!/bin/bash

for f in "$@"; do
    fsh="$f.sh"
    touch "$fsh" && chmod +x "$fsh"
    echo "#!/bin/bash" >> "$fsh"
    echo " " >> "$fsh"
    echo "source kube_practice/common/colors.sh" >> "$fsh"
done