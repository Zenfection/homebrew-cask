cask "dash-mod" do
    version "6.4.0"
    sha256 "7a6a313fe4317a79ec3abec9b8aad4999e255c113b31b0a4c6060020d424cde9"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Dash_#{version}.dmg"
    name "Dash"
    desc "API documentation browser and code snippet manager"
    homepage "https://github.com/zenfection/macos"
  
    livecheck do
      url "https://kapeli.com/Dash#{version.major}.xml"
      strategy :sparkle
    end
  
    auto_updates true
    depends_on macos: ">= :mojave"
    app "Dash.app"
  
    zap trash: [
      "~/Library/Application Support/Dash",
      "~/Library/Application Support/com.kapeli.dashdoc",
      "~/Library/Caches/com.kapeli.dashdoc",
      "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
      "~/Library/HTTPStorages/com.kapeli.dashdoc.binarycookies",
      "~/Library/Logs/Dash",
      "~/Library/Preferences/com.kapeli.dashdoc.plist",
      "~/Library/Saved Application State/com.kapeli.dashdoc.savedState",
      "~/Library/WebKit/com.kapeli.dashdoc",
    ]
  end