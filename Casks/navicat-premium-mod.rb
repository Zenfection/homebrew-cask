
cask "navicat-premium-mod" do
    version "16.0.13"
    sha256 "46a0ccaf16830b7ebd88543aeafb058227a25ba250e81c80434816a03370fad9"
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