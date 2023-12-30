
cask "navicat-premium-mod" do
    version "16.3.4"
    sha256 "917dfa403ba8291451fd0e15d72c3c0a081b8488a1353ecd9a568958ebb816d5"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Navicat.Premium_#{version}.dmg"
    name "Navicat Premium"
    desc "Database administration and development tool"
    homepage "https://github.com/zenfection/macos"

    livecheck do
      url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
      regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
    end

    depends_on macos: ">= :mojave"

    app "Navicat Premium.app"
  end