cask "fsnotes-mod" do
  version "6.9.8"
  sha256 "9e782535999f82f86a3e87330f25db054253ba6b8bbb3f28ea1d8da5cf27d841"

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