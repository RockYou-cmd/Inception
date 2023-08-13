
# if [ ! -f "/already.txt" ]; then

# touch /already.txt


# fi

curl -LO https://github.com/google/cadvisor/releases/download/v0.39.0/cadvisor

chmod +x cadvisor

./cadvisor