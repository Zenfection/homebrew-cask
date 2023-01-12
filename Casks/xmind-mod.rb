cask "xmind-mod" do
    version "22.11.3656"
    sha256 "a02e22cc1ef4593fa781311c9324295c0a9c419ca9c3cc716d5b75476d779f1f"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Xmind_#{version}.zip"
    name "XMind"
    desc "Mind mapping and brainstorming tool"
    homepage "https://www.xmind.net/"
  
    livecheck do
      url "https://www.xmind.net/zen/download/mac/"
      strategy :header_match
      regex(/XMind[._-]for[._-]macOS[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    end
  
    conflicts_with cask: "homebrew/cask-versions/xmind8"
  
    app "Xmind.app"
  
    zap trash: [
      "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
      "~/Library/XMind",
    ]
  end