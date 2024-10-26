#!/usr/bin/bash

# Replace 'wlan0' with your WiFi interface name
INTERFACE="wlp1s0"

RX_BYTES_BEFORE=$(cat /sys/class/net/$INTERFACE/statistics/rx_bytes)
TX_BYTES_BEFORE=$(cat /sys/class/net/$INTERFACE/statistics/tx_bytes)
sleep 1
RX_BYTES_AFTER=$(cat /sys/class/net/$INTERFACE/statistics/rx_bytes)
TX_BYTES_AFTER=$(cat /sys/class/net/$INTERFACE/statistics/tx_bytes)

# Calculate the speed in KB/s
RX_SPEED=$((($RX_BYTES_AFTER - $RX_BYTES_BEFORE) / 1024))
TX_SPEED=$((($TX_BYTES_AFTER - $TX_BYTES_BEFORE) / 1024))

echo "WiFi: Dn ${RX_SPEED}KB/s | Up ${TX_SPEED}KB/s"
