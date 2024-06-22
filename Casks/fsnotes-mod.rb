cask "fsnotes-mod" do
  version "6.8.1"
  sha256 "44d3bc4b0b46c399ff572992a507d56d493a3831c55cb727ec8d02cd7952da44"

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