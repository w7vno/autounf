#!/bin/bash

apt update && apt upgrade -y
apt install nano -y
apt install python -y
pip install instagram_private_api

echo '
#!/bin/bash
echo "Starting..."
while true; do
	python main.py
	sleep 240
done' >> unfollow
chmod +x unfollow

echo "Now you can edit 'main.py'\nthen run './unfollow' to start"
