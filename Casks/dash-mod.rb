cask "dash-mod" do
    version "7.3.0"
    sha256 "900bf5726265ac81a87b86eb445c2db5e699cc9c642ced8aca61afcc165e8dd6"
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