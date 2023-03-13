#!/bin/zsh
# Convert /static/icon/icon.svg to all the required formats and sizes.
# Works on macOS only (uses sips).
# Requires librsvg.

# Icons path.
icon_dir="./static/icon"

# Source SVG:
svg_icon="$icon_dir/icon.svg"

# manifest.json - 192x192.
rsvg-convert --width=192 --height=192 --keep-aspect-ratio $svg_icon --output "$icon_dir/icon-192x192.png"

# manifest.json - 512x512.
rsvg-convert --width=512 --height=512 --keep-aspect-ratio $svg_icon --output "$icon_dir/icon-512x512.png"

# base.html - Apple Touch Icon 180x180.
rsvg-convert --width=180 --height=180 --keep-aspect-ratio $svg_icon --output "$icon_dir/icon-180x180.png"

# Compress the PNGs.
oxipng --opt max --interlace 0 --strip safe --alpha --zopfli $icon_dir/*.png &>/dev/null

# base.html - Favicon.
sips --setProperty format com.microsoft.ico --resampleHeightWidth 32 32 "$icon_dir/icon-512x512.png" --out "$icon_dir/favicon.ico" &>/dev/null
