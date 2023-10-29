cask "sketchup-mod" do
    version "23.1.341.117"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    url "https://github.com/Zenfection/macos/releases/download/1.0/SketchUpPro_#{version}.dmg"
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