cask "dash-mod" do
    version "7.1.5"
    sha256 "de31ebff89db81f6662cfdcebbde62ba20fd49a931152dbb55e1dd8c4a9124ca"
    url "https://dl.dropboxusercontent.com/s/ynxx7aodqfbc2zz/Dash%207.1.5.dmg?dl=0"
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