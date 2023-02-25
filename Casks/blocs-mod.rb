cask "blocs-mod" do
    version "5.0.6"
    sha256 "9113dc9c5361f4b73b2dd628efa9f98c2c7bfecbc03e097ae4223eb071853531"
  
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