cask "bettertouchtool-mod" do
    version "4.010"
    sha256 "b2fe236965b902efa9302a9baa1f8646a0a92396fffad6f7f9fee06adc0afd1b"
    
    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.dmg"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 

    artifact 'M4G1C M1K3.bttlicense', target: "/Users/zenfection/Library/Application Support/BetterTouchTool/bettertouchtool.bttlicense"

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