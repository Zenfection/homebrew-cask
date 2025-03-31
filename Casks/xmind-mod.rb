cask "xmind-mod" do
    version "25.01.01061"
    sha256 "83da9ae4f707cdf55cb58bdc6c3b3097cb7def2a9e53563bdb399c1c5199a5da"
    url "https://github.com/Zenfection/macos/releases/download/1.0/XMind_#{version}.dmg"
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