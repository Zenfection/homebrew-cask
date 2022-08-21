cask "bettertouchtool-mod" do
    version "3.562.1702"
    sha256 "529c96b398c2952fa5d4e6fff9ae1e138d184f17f92ede42b083b25b286f76c7"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.dmg"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
  
    pkg "Prevent updates patch.app"
    pkg "Copy me to the desktop.bttlicense"
    
    auto_updates true
  
    app "BetterTouchTool.app"
  
    uninstall quit: "com.hegenberg.BetterTouchTool"
  
    zap trash: [
      "~/Library/Application Support/BetterTouchTool",
      "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    ]
  end