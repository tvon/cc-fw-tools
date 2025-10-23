#!/bin/bash

set -e
cp "$CURRENT_PATCH_PATH/block-update-checks.sh" "$SQUASHFS_ROOT/app/block-update-checks.sh"
chmod a+x "$SQUASHFS_ROOT/app/block-update-checks.sh"
echo "sh -c \"sleep 10; while [ 1 ]; do /app/block-update-checks.sh; sleep 60; done\" &" >> "$SQUASHFS_ROOT/etc/rc.local"