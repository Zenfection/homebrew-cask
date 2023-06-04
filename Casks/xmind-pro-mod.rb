cask "xmind-pro-mod" do
    version "23.5"
    sha256 "7708dcb252bbc459e1d5ca531799ee7da664ca1bb618e0f5d0226d386aed7ee7"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Xmind_#{version}.zip"
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