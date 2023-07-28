
cask "navicat-premium-mod" do
    version "16.2.5"
    sha256 "e3ffe28edbbe6ab6a6bfa934e23294b935bf2ab175382e6df71ef5c5990909b6"
    url "https://dl.dropboxusercontent.com/scl/fi/zcgdy74ocx0psv6v43kjm/Navicat_Premium_16_2_5.dmg?rlkey=kif9nztg9m5rjw4hx22lesr9b&dl=0"
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