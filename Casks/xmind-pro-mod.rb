cask "xmind-pro-mod" do
    version "22.11.3656"
    sha256 "f85c1944bf9883472b357cfc38397e3c21cc4251843e3fbb235f4c57289e3179"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Xmind.Pro_#{version}.zip"
    name "XMind"
    desc "Mind mapping and brainstorming tool"
    homepage "https://www.xmind.net/"
  
    conflicts_with cask: "homebrew/cask-versions/xmind8"
  
    app "Xmind.app"
  
    zap trash: [
      "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
      "~/Library/XMind",
    ]
  end