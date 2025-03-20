
cask "navicat-premium-mod" do
    version "17.2.2"
    sha256 "dbfbb19c217089a87eb835703c819c9857e827c0164a07857fa6f89222ff1fc3"
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