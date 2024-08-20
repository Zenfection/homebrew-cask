cask "fsnotes-mod" do
  version "6.9.2"
  sha256 "04ab6f1667edc90986d45c897f23f68b00271cfbef4463813d35007684bb11cd"

  url "https://github.com/Zenfection/macos/releases/download/1.0/FSNotes_#{version}.dmg"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end