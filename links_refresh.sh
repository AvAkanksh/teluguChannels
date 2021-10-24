echo '' > ~/.liveTv/links.txt
while IFS= read -r line; do
    curl -s $line >> ~/.liveTv/links.txt
done < ~/.liveTv/urls.txt
