#!/bin/zsh
# Convert the specified SVG icon to all the required formats and sizes.
# Works on macOS only.
# Requires:
# - librsvg
# - oxipng
# - sips

# Destination path for the generated icons.
icon_dir="$PWD/static/appicon"

# SVG icon source.
svg_icon="$1"
if [[ "$svg_icon" = "" ]]; then
	svg_icon="vyolet.svg"
fi

echo "Generating app icons from $icon_dir/$svg_icon..."

set -e

echo "manifest.json: icon.svg"
cp "$icon_dir/$svg_icon" "$icon_dir/icon.svg"

echo "manifest.json: icon-192x192.png"
rsvg-convert --width=192 --height=192 --keep-aspect-ratio "$icon_dir/$svg_icon" --output "$icon_dir/icon-192x192.png"

echo "manifest.json: icon-512x512.png"
rsvg-convert --width=512 --height=512 --keep-aspect-ratio "$icon_dir/$svg_icon" --output "$icon_dir/icon-512x512.png"

echo "base.html: icon-180x180.png"
rsvg-convert --width=180 --height=180 --keep-aspect-ratio "$icon_dir/$svg_icon" --output "$icon_dir/icon-180x180.png"

echo "Compressing PNGs..."
oxipng --opt max --interlace 0 --strip safe --alpha --zopfli "$icon_dir/icon-192x192.png" &>/dev/null
oxipng --opt max --interlace 0 --strip safe --alpha --zopfli "$icon_dir/icon-512x512.png" &>/dev/null
oxipng --opt max --interlace 0 --strip safe --alpha --zopfli "$icon_dir/icon-180x180.png" &>/dev/null

echo "base.html: favicon.ico from icon-512x512.png"
sips --setProperty format com.microsoft.ico --resampleHeightWidth 32 32 "$icon_dir/icon-512x512.png" --out "$icon_dir/favicon.ico" &>/dev/null
