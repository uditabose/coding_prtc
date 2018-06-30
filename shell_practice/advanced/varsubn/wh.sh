#!/bin/bash
####################################
# URL  : http://www.tldp.org/LDP/abs/html/othertypesv.html
# what : whois lookup
#
#
# @author papa
####################################

E_NOARGS=75


if [[ -z "$1" ]]; then
    echo "Usage: `basename $0` [domain-name]"
    exit $E_NOARGS
fi

echo "$1"
case `basename $0` in
    "wh" | "wh.sh"             ) whois $1@whois.tucows.com ;;
    "wh-ripe" | "wh-ripe.sh"   ) whois $1@whois.ripe.net ;;
    "wh-apnic" | "wh-apnic.sh" ) whois $1@whois.apnic.net ;;
    "wh-cw" | "wh-cw.sh"       ) whois $1@whois.cw.net ;;
    *                          ) echo "Usage: `basename $0` [domain-name]" ;;
esac

exit $?