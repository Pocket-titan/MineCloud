cd /opt/minecloud
echo "Server started: $(date)"
public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo "new ip: $public_ip"
./send_discord_message_to_webhook.sh "✨ The server instance is ready! To view the live map, go to http://$public_ip:8080. Here's the IP address:\n$public_ip"
echo "Discord public IP sent"

#start the Minecloud server
echo "starting server"
cd server
./start_server.sh
echo "server stop"
