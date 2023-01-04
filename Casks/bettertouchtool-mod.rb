cask "bettertouchtool-mod" do
    version "3.991"
    sha256 "e462ada5aa8fab6151c3470be4e7274066a19e0c468a0153173d9c74500a18aa"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.dmg"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 

    artifact 'Patch/M4G1C M1K3.bttlicense', target: "/Users/zenfection/Library/Application Support/BetterTouchTool/bettertouchtool.bttlicense"

    # installer script: {
    #   executable: "blockHost.sh",
    #   sudo: true,
    # }

    uninstall quit: "com.hegenberg.BetterTouchTool"
  
    zap trash: [
      "~/Library/Application Support/BetterTouchTool",
      "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    ]
  end