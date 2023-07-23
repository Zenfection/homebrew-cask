cask "blocs-mod" do
    version "5.1.1"
    sha256 "d40a1552ccaf164959aed3991de00ea08711b2a5b353a1494733c2fa777a8768"

    url "https://dl.dropboxusercontent.com/scl/fi/dzfau5haisgjt570uftz1/Blocs_5.1.1.dmg?rlkey=kpl6it28zh7fsbrsivhu58124&dl=0"
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