cask "blocs-mod" do
    version "5.1.2"
    sha256 "e06cf382accba9a06871ec93f6019130fac024be1f4710a384965305a16e6900"

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