cask "adguard-mod" do
    version "2.9.2.1234"
    sha256 "aa773d62e59ec4e48cf259ec73f487a0fc7ae9877d3dcaa0ccc67ddfc49ac4dd"
    url "https://github.com/Zenfection/macos/releases/download/1.0/AdGuard_#{version}.dmg"
    name "AdGuard"
    desc "Stand alone ad blocker"
    homepage "https://github.com/zenfection/macos"
  
    auto_updates true
    conflicts_with cask: "homebrew/cask-versions/adguard-nightly"
    depends_on macos: ">= :sierra"

    app "AdGuard.app"

    uninstall quit:      "com.adguard.mac.adguard",
              pkgutil:   "com.adguard.mac.adguard-pkg",
              launchctl: [
                "com.adguard.mac.adguard.pac",
                "com.adguard.mac.adguard.tun-helper",
              ],
              delete:    [
                "/Library/com.adguard.mac.adguard.pac",
                "/Library/Application Support/AdGuard Software/com.adguard.mac.adguard",
                "/Library/Application Support/com.adguard.Adguard",
              ],
              rmdir:     "/Library/Application Support/AdGuard Software"
  
    zap trash: [
      "/Library/Logs/com.adguard.mac.adguard",
      "~/Library/Application Scripts/*.com.adguard.mac",
      "~/Library/Application Scripts/com.adguard.mac.adguard.loginhelper",
      "~/Library/Application Scripts/com.adguard.mac.adguard.safari-assistant",
      "~/Library/Application Support/Adguard",
      "~/Library/Application Support/com.adguard.Adguard",
      "~/Library/Application Support/com.adguard.mac.adguard.pac",
      "~/Library/Application Support/com.adguard.mac.adguard.tun-helper",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adguard.mac.adguard.loginhelper.sfl*",
      "~/Library/Caches/com.adguard.Adguard",
      "~/Library/Caches/com.adguard.mac.adguard",
      "~/Library/Containers/com.adguard.mac.adguard.loginhelper",
      "~/Library/Containers/com.adguard.mac.adguard.safari-assistant",
      "~/Library/Cookies/com.adguard.Adguard.binarycookies",
      "~/Library/Group Containers/*.com.adguard.mac",
      "~/Library/HTTPStorages/com.adguard.mac.adguard",
      "~/Library/HTTPStorages/com.adguard.mac.adguard.binarycookies",
      "~/Library/Logs/Adguard",
      "~/Library/Preferences/com.adguard.Adguard.plist",
      "~/Library/Preferences/com.adguard.mac.adguard.plist",
      "~/Library/Saved Application State/com.adguard.mac.adguard.savedState",
    ]
  end