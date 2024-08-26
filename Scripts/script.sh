#!/bin/bash

version=1.0
repoPath=~/Desktop/Github/macos
dmgPath=~/Desktop/Github/homebrew-cask/Cache
homebrewPath=~/Desktop/Github/homebrew-cask/Casks

cd $dmgPath

find . -type f -name "*.dmg" | while read file; do
  if [[ "$file" == *" "* ]]; then
    text=$(basename "$file" .dmg | sed -E 's/([a-zA-Z_ ]+)[0-9.]+/\1/' | sed -E 's/ /./g; s/.([^.]*)$/ \1/' | xargs)
    number=$(basename "$file" .dmg | sed -E 's/[a-zA-Z_ ]+([0-9.]+)/\1/' | xargs)
    newfile="${text}_${number}.dmg"
    mv "$file" "$newfile"
    file="$newfile"
    echo '1' $text

    else
    text=$(echo "$file" | sed 's/\.dmg//; s/.*\///; s/_.*//' | cut -d'_' -f1)
    number=$(echo "$file" | sed 's/\.dmg//g' | cut -d'_' -f2)
  fi

  modfile=$homebrewPath/$(echo "$text" | tr '[:upper:]' '[:lower:]' | sed 's/\./-/g' | xargs)-mod.rb
  sha256=$(shasum -a 256 "$file" | awk '{print $1}')

  if [ -f "$modfile" ]; then
    currentVersion=$(grep -E "version \".*\"" "$modfile" | sed -E 's/version "(.*)"/\1/' | xargs)

    if [[ "$currentVersion" < "$number" ]]; then
      echo "Updating $text from $currentVersion to $number"
      sed -i '' -e "s/version \".*\"/version \"$number\"/g" "$modfile"
      sed -i '' -e "s/sha256 \".*\"/sha256 \"$sha256\"/g" "$modfile"
    fi
  else
    echo "$modfile not found"
  fi
done


files=$(find . -type f -name "*.dmg" | sed "s|^\./|$dmgPath/|" | xargs)
cd $repoPath
gh release upload $version $files