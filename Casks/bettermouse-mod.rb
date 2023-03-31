cask "bettermouse-mod" do
  version "1.4.3085"
  sha256 "c51f3d6f89aec9c844e8bb45ea8549dfba14110fa2d5c03047c645e3bf9ea3e2"

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