MAX=1234567890

COUNT=$((COUNT + 5 + MAX*2))

echo "COUNT : $COUNT"

let COUNT+=10

echo "let COUNT : $COUNT"

SQUARE=$((6**7))

echo "SQUARE : $SQUARE"


PROP=$(($1 + 5))

echo "PROP : $PROP"
