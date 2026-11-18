#!/bin/zsh
set -euo pipefail
cd "$(dirname "$0")"

stage="$(mktemp -d "${TMPDIR:-/tmp}/snowyonmac-build.XXXXXXXX")"
trap 'rm -rf "$stage"' EXIT
app="$stage/SnowyOnMac.app"
mkdir -p "$app/Contents/MacOS" "$app/Contents/Resources"
cp Info.plist "$app/Contents/Info.plist"
cp LICENSE "$app/Contents/Resources/LICENSE"
cp Assets/AppIcon.icns "$app/Contents/Resources/AppIcon.icns"

xcrun swiftc -O -target arm64-apple-macosx13.0 \
    -module-cache-path "$stage/module-cache" SnowyOnMac.swift \
    -o "$app/Contents/MacOS/SnowyOnMac"
codesign --force --sign - "$app"
codesign --verify --strict --all-architectures "$app"

mkdir -p build
ditto --norsrc "$app" build/SnowyOnMac.app
# Finder metadata can be added automatically inside iCloud-synced folders.
xattr -d com.apple.FinderInfo build/SnowyOnMac.app 2>/dev/null || true
codesign --verify --strict --all-architectures build/SnowyOnMac.app
print "Build fertig – build/SnowyOnMac.app"
