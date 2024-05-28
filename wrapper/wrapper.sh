#! /bin/sh

# Optional: Add any conditional checks or extra options that are needed
if grep -q "Pi 4" /proc/cpuinfo; then
  EXTRAOPTS="--disable-gpu"  # Adjust according to the actual options your Tauri app supports
fi

# Execute your Tauri application
exec $SNAP/usr/bin/game01 $EXTRAOPTS
