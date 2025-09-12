
cask "navicat-premium-mod" do
    version "17.3.3"
    sha256 "f4192f6ebde98787597061649acb7d966da9bade331088fd264600798a1a556f"
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