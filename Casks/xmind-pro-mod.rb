cask "xmind-pro-mod" do
    version "23.07"
    sha256 "181b29e91632f6b11409528e85cd77ba291753f8cc1517b73fa9e3746019764f"
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