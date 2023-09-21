cask "sketchup-mod" do
    version "2023,23.1.318"
    sha256 "b40b8eeae3a68fc845b6c6de7601ca3a6a74efd2ae650be0a30c8ca9736d8302"

    url "https://www.dropbox.com/s/1pctvlag5f3fdkr/SketchUpPro%202023-1-318-110.dmg?dl=0"
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