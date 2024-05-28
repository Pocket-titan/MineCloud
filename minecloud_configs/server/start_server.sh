#!/bin/sh

echo "Starting Minecraft server"
# You can adjust your server start up command here
/usr/bin/env java \
  -Xmx6144M \
  -Xms2048M \
  -XX:+UseG1GC \
  -XX:+ParallelRefProcEnabled \
  -XX:MaxGCPauseMillis=100 \
  -XX:+UnlockExperimentalVMOptions \
  -XX:+DisableExplicitGC \
  -XX:+AlwaysPreTouch \
  -XX:TargetSurvivorRatio=90 \
  -XX:G1NewSizePercent=50 \
  -XX:G1MaxNewSizePercent=80 \
  -XX:G1MixedGCLiveThresholdPercent=35 \
  -jar server.jar nogui
echo "Minecraft server stop"
