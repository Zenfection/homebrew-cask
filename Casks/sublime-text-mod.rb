cask "sublime-text-mod" do
  version "4137"
  sha256 "5c151a3b035743e863e240e2f07190f90149acea563713657fe8022cde20d3c4"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Sublime.Text.#{version.major}}_#{version}.dmg"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.sublimetext.com/download"
    regex(/href=.*?v?(\d+)_mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)[1]
      next if match.blank?

      "#{match[0]}.#{match[1..]}"
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-text-dev"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  # Sublime Text 4 uses `Sublime Text 3` and `com.sublimetext.3` dirs if they exist
  # Otherwise, it creates `Sublime Text` and `com.sublimetext.4`
  # More info: https://www.sublimetext.com/docs/side_by_side.html
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text",
    "~/Library/Application Support/Sublime Text (Safe Mode)",
    "~/Library/Application Support/Sublime Text 3",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/Caches/com.sublimetext.3",
    "~/Library/Caches/Sublime Text",
    "~/Library/Caches/Sublime Text (Safe Mode)",
    "~/Library/Caches/Sublime Text 3",
    "~/Library/HTTPStorages/com.sublimetext.#{version.major}",
    "~/Library/HTTPStorages/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
