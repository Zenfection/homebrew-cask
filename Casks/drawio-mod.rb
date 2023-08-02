cask "drawio-mod" do
    # arch arm: "arm64", intel: "x64"

    version "21.6.5"
    # sha256 arm:   "d676ba1334c7c6f6e5883a51df090ee9a530c245586f6cf19f0fed8488a04aec",
    #        intel: "a03f404eafebaf7d2fbcd3f787f3ae8da9abbee54df8fdff359e782d66482306"
    sha256 "87bcb88fc9f90575bf8ad2420d34fdf1476e60f6de252d7d8757fdf838ea8223"
    url "https://dl.dropboxusercontent.com/s/76ruvec7bw6sdyp/draw.io%20v21.6.5.dmg?dl=0",
    name "draw.io Desktop"
    desc "Online diagram software"
    homepage "https://www.diagrams.net/"

    # livecheck do
    #   url :url
    #   strategy :github_latest
    # end

    auto_updates true

    app "draw.io.app"

    zap trash: [
      "~/Library/Application Support/draw.io",
      "~/Library/Caches/com.jgraph.drawio.desktop",
      "~/Library/Logs/draw.io",
      "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
      "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
      "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
      "~/Library/WebKit/com.jgraph.drawio.desktop",
    ]
  end