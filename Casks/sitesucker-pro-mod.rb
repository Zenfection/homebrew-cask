cask "sitesucker-pro-mod" do
  version "5.1.11"
  sha256 "52a9ce6db96a9a177db2d0c7db13b1f3c9d86a6a95e8b020d0b0004438bcbdb5"
  url "https://dl.dropboxusercontent.com/scl/fi/b4irzf7s8ljrhojik3tbq/SiteSucker_5.1.11.dmg?rlkey=fflhpeuwhdtv942xeah1qnkkp&dl=0"

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
