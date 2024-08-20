cask "bettertouchtool-mod" do
    version "4.664"
    sha256 "2878588fccd6ba594fc25fb65bbbb8a926a1c3eeab8b78c4ea5e346f05314900"

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