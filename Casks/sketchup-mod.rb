cask "sketchup-mod" do
    version "2023,23.1.314"
    sha256 "8afa6c8dbd2ce4d1ba439e43c3236a432dd81d90ad38d26013b40f6beb1ea0fe"

    # downloads can be found at https://www.sketchup.com/download/all
    url "https://dl.dropboxusercontent.com/s/87av4b43ei97fqn/SketchUp%20Pro%202023%20v23.1.314.dmg?dl=0"
    name "SketchUp"
    name "SketchUp Make"
    desc "3D design software"
    homepage "https://github.com/zenfection/macos"

    suite "SketchUp #{version.csv.first}"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version.csv.first}.sfl*",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version.csv.first}.sfl*",
      "~/Library/Application Support/SketchUp #{version.csv.first}",
      "~/Library/Application Support/Trimble Connect for SketchUp",
      "~/Library/Caches/com.sketchup.SketchUp.#{version.csv.first}",
      "~/Library/Cookies/com.sketchup.SketchUp.#{version.csv.first}.binarycookies",
      "~/Library/Preferences/com.sketchup.SketchUp.#{version.csv.first}.plist",
      "~/Library/Preferences/com.sketchup.SketchUp.#{version.csv.first}.plist",
      "~/Library/Preferences/Trimble.SketchUp-Helper.plist",
    ]

    caveats do
      discontinued
    end
  end