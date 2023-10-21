cask "alfred-mod" do
  version "5.1.4"
  sha256 "7e305ed06aff779f389cc6f81523b8d87eaa54498e5ffe8f6e5ba78fa4d0a161"
  url "https://dl.dropboxusercontent.com/s/vh5hv172g1ki5ww/Alfred%205.1.4.dmg?dl=0"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.alfredapp.com/app/update#{version.major}/general.xml"
    strategy :page_match do |page|
      match = page.match(/Alfred[._-]v?(\d(?:\.\d+)+)[._-](\d+)\.tar\.gz/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: "com.runningwithcrayons.Alfred"

  zap trash: [
    "~/Library/Application Support/Alfred",
    "~/Library/Caches/com.runningwithcrayons.Alfred",
    "~/Library/Cookies/com.runningwithcrayons.Alfred.binarycookies",
    "~/Library/Preferences/com.runningwithcrayons.Alfred.plist",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist",
    "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState",
  ]
end
