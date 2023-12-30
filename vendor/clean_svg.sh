
# Remove width and height.
find ./ -name '*.svg' -exec sed -i '' -E 's|svg" width="\([0-9]*\)" height="\([0-9]*\)"|svg"|g' {} \;

# Remove `class="..."`.
find ./ -name '*.svg' -exec sed -i '' -E 's| class="\([- 0-9a-z]*\)"||g' {} \;