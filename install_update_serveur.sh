wget "https://www.minecraft.net/fr-fr/download/server"

path_minecraft/opt/minecraft/
path_versions=/opt/minecraft/versions/
alias_server=/opt/minecraft/minecraft_server

link=$(cat server | grep "<a href=\"https://launcher")

url=$(echo "$link" | grep -oP https:\/\/launcher[a-zA-Z0-9\.\/]*)

version=$(echo "$link" | grep -oP minecraft_server[0-9\.\/]*jar)

FILE=$path_versions/$version

echo "----------------------------------------------------------------------------------------------------"
echo "link = $link"
echo "url = $url"
echo "version = $version"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    wget -O $FILE $url
    if [ -f $alias_server ] ; then
        rm $alias_server
    fi
    ln -s $FILE $alias_server
fi

echo "----------------------------------------------------------------------------------------------------"
rm server

