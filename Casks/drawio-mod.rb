cask "drawio-mod" do
    # arch arm: "arm64", intel: "x64"

    version "21.6.8"
    # sha256 arm:   "d676ba1334c7c6f6e5883a51df090ee9a530c245586f6cf19f0fed8488a04aec",
    #        intel: "a03f404eafebaf7d2fbcd3f787f3ae8da9abbee54df8fdff359e782d66482306"
    sha256 "b2904944e5f5e2ee6400a68a221951b493a0852c3aca86f6460d6e16ec709a3a"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Draw.io_#{version}.dmg",
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