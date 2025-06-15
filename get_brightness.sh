#!/bin/bash
MONITOR=$(ddcutil detect --brief | awk '/Display/ {print $2; exit}')
ddcutil getvcp 10 --brief -d "$MONITOR" | awk '{print $4}'
