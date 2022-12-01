declare -i x=4

echo "Commands:\n"
echo "0 - Exit\n1 - Introduction\n2 - Display Files\n3 - Credits\n"

while [x != 0]
do
    echo"\nPlease choose 0, 1, 2, or 3:"
    read x
    if [x == 0]
    do
        echo "Exiting..."
        exit 0
    done
    if [x == 1]
    do 
        echo "Pokemon Trading Card Discord Bot"
    done [x == 2]
    do
        search_dir=/the/path/to/base/dir/
        for entry in "$search_dir"/*
            do
            echo "$entry"
            done
        done
        if [x == 3]
        do
            echo "Credits: Greg Zhang, Wesley Chok, Trevor Schoner"
        done
    done