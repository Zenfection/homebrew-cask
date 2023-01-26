cask "wifi-explorer-pro-mod" do
  version "3.5.2"
  sha256 "5d9551ece92cfbc6983686de0b4e738fea075e10c4dcc51bafea105e2f9541c8"
  url "https://github.com/Zenfection/macos/releases/download/1.0/WiFi.Explorer.Pro.#{version.major}_#{version}.dmg"
  name "WiFi Explorer Pro"
  desc "Scan, monitor, and troubleshoot wireless networks"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://www.intuitibits.com/appcasts/com.intuitibits.wifiexplorerpro#{version.major}cast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"
  app "WiFi Explorer Pro #{version.major}.app"
  uninstall pkgutil:   [
    "com.intuitibits.wifiexplorerpro#{version.major}.pkg",
    "com.intuitibits.wifiexplorerpro-helper.pkg",
  ],
            launchctl: [
              "com.intuitibits.wifiexplorerpro#{version.major}.wifiexplorerpro-bpf",
            ]

  zap trash: [
    "~/Library/Application Support/WiFi Explorer Pro #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.wifiexplorerpro#{version.major}.*",
    "~/Library/Caches/com.intuitibits.wifiexplorerpro#{version.major}",
    "~/Library/Group Containers/2B9R362QNU.com.adriangranados.wifiexplorer",
    "~/Library/Preferences/com.intuitibits.wifiexplorerpro#{version.major}.plist",
    "~/Library/Saved Application State/com.intuitibits.wifiexplorerpro#{version.major}.savedState",
  ]
end
