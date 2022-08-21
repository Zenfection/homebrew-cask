cask "bettertouchtool-mod" do
    version "3.562.1702"
    sha256 "6d982ba6965d79844cf347bce8934d47dee8b0e697b21b86af2bbf50bd854619"
    
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