cask "alfred-mod" do
  version "5.0.3,2084"
  sha256 "47b4d0518f0117b4d0fc8f02ecc7611bb5e5d82d743bde528e4ff06a0a26f9bc"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Alfred_#{version.csv.first}_#{version.csv.second}.dmg"
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
