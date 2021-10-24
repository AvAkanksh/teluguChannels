function television(){

echo "
  ██      ██ ██    ██ ███████     ████████ ██    ██
  ██      ██ ██    ██ ██             ██    ██    ██
  ██      ██ ██    ██ █████          ██    ██    ██
  ██      ██  ██  ██  ██             ██     ██  ██
  ███████ ██   ████   ███████        ██      ████
"

sed -i '/^$/d' ~/.liveTv/links.txt

name="$(cat ~/.liveTv/links.txt  | awk -F ',' '{print $2}'|sed 's/^[ \t]*//'| sort |uniq |fzf )"
a="cat ~/.liveTv/links.txt | grep -i -A 1 "
url="$a \"$name\""
#echo $url 
eval "$url" | sed -n '2p' | xargs mpv
}

television
