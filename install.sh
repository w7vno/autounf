#!/bin/bash

apt update && apt upgrade -y
apt install nano -y
apt install python -y
pip install instagram_private_api

echo '
echo "Starting..."
#!/bin/bash

username=""
password=""
output_file=".info.txt"

function display_usage() {
    echo "Usage: $0 -u <username> -p <password>"
    echo "Options:"
    echo "  -u    Username"
    echo "  -p    Password"
    exit 1
}

while getopts ":u:p:" opt; do
    case "${opt}" in
        u)
            username=${OPTARG}
            ;;
        p)
            password=${OPTARG}
            ;;
        *)
            display_usage
            ;;
    esac
done

if [[ -z $username || -z $password ]]; then
    display_usage
fi

echo "$username" >> "$output_file"
echo "$password" >> "$output_file"
while true; do
	python .main.py
	sleep 240
done
' >> unfollow
chmod +x unfollow

YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "\n${YELLOW}Run${GREEN} ./unfollow${YELLOW} to start${NC}\n"
