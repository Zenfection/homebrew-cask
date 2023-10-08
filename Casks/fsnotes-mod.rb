cask "fsnotes-mod" do
  version "6.4.2"
  sha256 "b8af01a799fc94652776c0b7d747cd6742dc0cb41a8b5f57878ee2768c9db2b4"

  url "https://dl.dropboxusercontent.com/s/699clqsnrpr6m9z/FSNotes%206.4.2.dmg?dl=0"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end