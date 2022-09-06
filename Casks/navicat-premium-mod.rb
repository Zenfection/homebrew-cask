
cask "navicat-premium-mod" do
    version "16.1.2"
    sha256 "e81cd1a0de7d47680a6a1d664dc8ad6cb461578a6e02dbc9aa22d83904dda633"
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