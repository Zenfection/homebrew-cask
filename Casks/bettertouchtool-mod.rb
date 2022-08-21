cask "bettertouchtool-mod" do
    version "3.562.1702"
    sha256 "4c4687ab37d25295c00963681539fd9e630424e110befb7c56371c346fbf3195"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.zip"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 

    artifact 'bettertouchtool.bttlicense', target: "/Users/zenfection/Library/Application Support/BetterTouchTool/bettertouchtool.bttlicense"

    installer script: {
      executable: "blockHost.sh",
    }

    uninstall quit: "com.hegenberg.BetterTouchTool"
  
    zap trash: [
      "~/Library/Application Support/BetterTouchTool",
      "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    ]
  end