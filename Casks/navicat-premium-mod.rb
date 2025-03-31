
cask "navicat-premium-mod" do
    version "17.2.4"
    sha256 "0c7effafce33166d3b7d595fbbeb92359489dc730066a5310dc78933d419cb89"
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