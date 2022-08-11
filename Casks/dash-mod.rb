cask "dash-mod" do
    version "6.3.1"
    sha256 "38f95db869701c6e335c6099e5c6035d1f8df3a13afc96da1a235644210c3e3a"
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