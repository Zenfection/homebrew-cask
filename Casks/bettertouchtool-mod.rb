cask "bettertouchtool-mod" do
    version "4.017"
    sha256 "d0b85cfdd837460de397d5ed241182dab29a9328edb9ea28b7ae4ddd7963371c"

    url "https://github.com/Zenfection/macos/releases/download/1.0/BetterTouchTool_#{version}.dmg"
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