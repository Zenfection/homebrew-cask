cask "tg-pro-mod" do
  version "2.83"
  sha256 "6dd39077ccb7550d1ec5fee907f5ff2833fef9c563ccf013bc74d1c96f14ac0c"

  url "https://dl.dropboxusercontent.com/scl/fi/l36wjjxlgxvv5ujod6ote/TG_Pro_2.83.dmg?rlkey=0fpjaxpmo92l42isk4wsm1xic&dl=0"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "TG Pro.app"

  zap trash: [
    "/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist",
    "/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper",
    "~/Library/Application Support/TG Pro",
    "~/Library/Caches/com.tunabellysoftware.tgpro",
    "~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies",
    "~/Library/Preferences/com.tunabellysoftware.tgpro.plist",
  ]
end
