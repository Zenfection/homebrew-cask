cask "bettertouchtool-mod" do
    version "3.562.1702"
    sha256 "9ec0677ab4ee66f1c7d8e788eff43be93b48649671449025197d0483fcb27576"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.zip"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 

    artifact 'bettertouchtool.bttlicense', target: "/Users/zenfection/Library/Application Support/BetterTouchTool/bettertouchtool.bttlicense"

    installer script: {
      executable: "blockHost.sh",
      sudo: true,
    }

    uninstall quit: "com.hegenberg.BetterTouchTool"
  
    zap trash: [
      "~/Library/Application Support/BetterTouchTool",
      "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    ]
  end