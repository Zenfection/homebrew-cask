cask "fsnotes-mod" do
  version "6.7.0"
  sha256 "c5140e921c966fbfdff689563aa9af9b9431688f270c7b26705a39af30aa618a"

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