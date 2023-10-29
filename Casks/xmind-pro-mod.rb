cask "xmind-pro-mod" do
    version "23.7"
    sha256 "f81e69541f957fc87da296147d32778ee4dca78828d951f82cedfbf413032dc7"
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