fptr="in.txt"
i=1
while read -r line
do
    echo -n "Line no : "
    echo -n $i
    echo -n " - "
    echo -n " "
    wc -w <<<$line
    i=$((i+1))
done <$fptr