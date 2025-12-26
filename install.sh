#!/bin/bash

echo "[*] Installing REQ-HTML..."

pip install -r requirements.txt

chmod +x req.py

cp req.py /usr/local/bin/req-html

echo "[+] Installed!"
echo "[+] Use: req-html <url>"