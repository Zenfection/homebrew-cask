cask "bettertouchtool-mod" do
    version "3.562.1702"
    sha256 "c7aeef09fcf7a7ec4f5e98effce9505d50f3b7e59879a936df7d4a4e96c07b8f"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.zip"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 
  
    installer script: {
      executable: "blockHost.sh",
    }

    uninstall quit: "com.hegenberg.BetterTouchTool"
  
    zap trash: [
      "~/Library/Application Support/BetterTouchTool",
      "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    ]
  end