cask "sitesucker-pro-mod" do
  version "5.7"
  sha256 "65c19befdd7a1ec029a95d1bc02cef40945eaf307a84977bbe748fd95f6d7eb3"
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
