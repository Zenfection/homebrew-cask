cask "dash-mod" do
    version "7.0.0"
    sha256 "7cc294b50ad2d6c0752f3a0b7215d8710f5a83dfd94eed0a6d605eac8f523808"
    url "https://dl.dropboxusercontent.com/scl/fi/9i2kgicetcqd08o9uj5uo/Dash_7_0_0.dmg?rlkey=m5574pqocbt5fqmxvtlpohg4n&dl=0"
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