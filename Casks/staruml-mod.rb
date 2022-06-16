cask "staruml-mod" do
    version "5.0.2"
    sha256 "4fcb89000c9ac342da1fa1158cba708c76468e0e4d6fa719a715faeb54625fc6"
    url "https://github.com/Zenfection/macos/releases/download/1.0/StarUML_#{version}.dmg"
    name "StarUML"
    desc "Software modeler"
    homepage "https://github.com/zenfection/macos"
    app "StarUML.app"
    auto_updates true
end