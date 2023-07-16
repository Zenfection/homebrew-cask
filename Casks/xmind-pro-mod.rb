cask "xmind-pro-mod" do
    version "23.6"
    sha256 ""
    url "https://dl.dropboxusercontent.com/scl/fi/0t2enef2vam9i265ibduh/XMind_23.6.dmg?rlkey=e4msmbdgg7uxc33ffxw15bkb0&dl=0"
    name "XMind"
    desc "Mind mapping and brainstorming tool"
    homepage "https://www.xmind.net/"

    conflicts_with cask: "homebrew/cask-versions/xmind8"

    app "Xmind.app"

    zap trash: [
      "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
      "~/Library/XMind",
    ]
  end