cask "bettermouse-mod" do
  version "1.5"
  sha256 "c145393a543f5e6be69b312c79ddf1cf6b6740e627363cbca624a72cbadf562a"

  url "https://github.com/Zenfection/macos/releases/download/1.0/BetterMouse_#{version}.dmg"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url :homepage
    regex(/Version (\d+(?:\.\d+)+)/i)
  end

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: [
    "~/Library/Application Support/BetterMouse",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}*",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end