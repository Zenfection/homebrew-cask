cask "blocs-mod" do
    version "5.2.3"
    sha256 "1e30a71b974fa42fbe5915c01bd58fb1713532d7aa4c06fad097dc18ad01db6a"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Blocs_#{version}.dmg"
    name "Blocs"
    desc "Visual web design software"
    homepage "https://github.com/zenfection/macos"

    livecheck do
      url "https://blocsapp.com/update/v#{version.major}/info.xml"
      strategy :sparkle
    end

    auto_updates true
    depends_on macos: ">= :sierra"
    container nested: "Blocs/Blocs-#{version.major}.dmg"

    app "Blocs.app"
  end