function television(){

echo "
#  ██      ██ ██    ██ ███████     ████████ ██    ██
#  ██      ██ ██    ██ ██             ██    ██    ██
#  ██      ██ ██    ██ █████          ██    ██    ██
#  ██      ██  ██  ██  ██             ██     ██  ██
#  ███████ ██   ████   ███████        ██      ████
#
#
"

list_urls="$(curl -s 'https://pastebin.pl/view/raw/b148be65')"
name="$(curl -s 'https://pastebin.pl/view/raw/b148be65' | awk -F ',' '{print $2}' | sort |uniq |fzf )"
echo "${name}"|xclip
echo $(xclip -o)
a="curl -s 'https://pastebin.pl/view/raw/b148be65' | grep -i -A 1 \""
url="$a$name\""
eval "$url" | sed -n '2p' | xargs mpv
}

television
