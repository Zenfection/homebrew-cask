
cask "navicat-premium-mod" do
    version "16.1.4"
    sha256 "4e0a442503162d06cdb4b97e044ed947c3e6f6976b2c6fe0a1bd8f087a146937"
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