
cask "navicat-premium-mod" do
    version "16.1.6"
    sha256 "46b034e9246fda2cbad5b689d143539a10490b7dcb3588569f36f326ad143a26"
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