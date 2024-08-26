cask "sitesucker-pro-mod" do
  version "5.4.5"
  sha256 "0c69c0a827d611b5e6ceaa95537ff96d15c78d8f0785cfaec45971b05f826337"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end
