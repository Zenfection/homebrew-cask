cask "blocs-mod" do
    version "5.2.8"
    sha256 "486f6445ae3dacff80a9c05160fbadb3ee9dc50248085f98c77692b9c7a52de3"

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