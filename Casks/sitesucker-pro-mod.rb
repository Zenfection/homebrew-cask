cask "sitesucker-pro-mod" do
  version "5.1.7"
  sha256 "0c8ea4d6fe8e741abd24eee73284598a08d622e2d13f155b26f86225c518cc74"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker.Pro_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end
