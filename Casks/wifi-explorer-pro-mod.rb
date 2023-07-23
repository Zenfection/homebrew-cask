cask "wifi-explorer-pro-mod" do
  version "3.5.7"
  sha256 "9603e465c62dac0880683396b4a3aaf5e986f25e039575e9d13ea54979ae3e8b"
  url "https://dl.dropboxusercontent.com/scl/fi/glryta6uicb2n2ivlxpa4/WiFi_Explorer_Pro_3_3.5.7.dmg?rlkey=8xr5os1xbvzdqpw4ml8ndkl2o&dl=0"
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
