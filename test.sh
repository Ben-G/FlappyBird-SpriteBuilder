osascript -e 'tell application "System Events"' -e 'set ProcessList to name of every process' -e 'if "SpriteBuilder" is in ProcessList then' -e 'tell application "SpriteBuilder" to publish' -e 'end if' -e 'end tell'

if ! [ -n "${MGWU_SKIP_PUSH}" ]; then
git add . --all
git commit -m "Automatically Committed for MakeGamesWithUs"
git push origin master || true
fi