#!/bin/bash
# print_passwd.sh - a needlessly dramatic way to print /etc/passwd

echo "=========================================="
echo "   Preparing to reveal /etc/passwd ..."
echo "=========================================="
sleep 1

if [ -f /etc/passwd ]; then
    echo "File found. Behold its contents:"
    echo "------------------------------------------"
    cat /etc/passwd
    echo "------------------------------------------"
    echo "Total lines: $(wc -l < /etc/passwd)"
else
    echo "Uh oh, /etc/passwd doesn't exist?! That's... not good."
    exit 1
fi

echo "Done. That was riveting."
