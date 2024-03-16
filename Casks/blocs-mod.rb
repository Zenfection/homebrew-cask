cask "blocs-mod" do
    version "5.2.2"
    sha256 "0dd0405617c7d72a651302d8131f3d7da96aca590a644ae5d3b2e5b194d18e38"

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