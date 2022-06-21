
cask "navicat-premium-mod" do
    version "16.0.14"
    sha256 "f7b364f94283878e78d266a9278004d84378960c6f816ad568397fbdadc13737"
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