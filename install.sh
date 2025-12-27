#!/bin/bash

echo "[*] Installing REQ-HTML..."

pip install -r requirements.txt

chmod +x req.py

if [ -n "$PREFIX"]; then
    echo "[*] Detected Termux environment."
    cp req.py $PREFIX/bin/req-html
else
    echo "[*] Detected Linux"
    sudo cp req.py /usr/local/bin/req-html
fi

echo "[+] Installed!"
echo "[+] Use: req-html <url>"