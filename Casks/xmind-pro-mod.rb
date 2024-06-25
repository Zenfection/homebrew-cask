cask "xmind-pro-mod" do
    version "24.04.10311"
    sha256 "2fd31fe374529b36503b38cff95326b9738ff10ec68e01b443a3866d6680b084"
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