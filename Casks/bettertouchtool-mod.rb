cask "bettertouchtool-mod" do
    version "4.017"
    sha256 "d0b85cfdd837460de397d5ed241182dab29a9328edb9ea28b7ae4ddd7963371c"
    
    url "https://dl.dropboxusercontent.com/scl/fi/xh0kmi3xigx5u64nlbyqw/BetterTouchTool_4.017.dmg?rlkey=5p5yohcj90ed4e5p0ik0e5hki&dl=0"
    name "BetterTouchTool"
    desc "Tool to customize input devices and automate computer systems"
    homepage "https://github.com/zenfection/macos"
    
    auto_updates true
  
    app "BetterTouchTool.app" 

    artifact 'license.bettertouchtool', target: "/Users/zenfection/Library/Application Support/BetterTouchTool/bettertouchtool.bttlicense"

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