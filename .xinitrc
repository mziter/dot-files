# Adjust keyboard delay
xset r rate 270 30

# Start X at this dpi
xrandr --dpi 190

# Merge and load config
xrdb -merge ~/.Xresources

# Let detect retina display
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Set background
feh --bg-scale ~/.config/wallpaper/remembering.jpg
# Start i3
exec i3

