cask "sketchup-mod" do
    version "2022,22.0.353"
    sha256 "54f66e21b7c26abf540b2f6383c3fe233de69bc73191a0c5f50668b87214ea82"
  
    # downloads can be found at https://www.sketchup.com/download/all
    url "https://github.com/Zenfection/macos/releases/download/1.0/Sketchup.Pro_#{version.csv.first}_#{version.csv.second}.dmg"
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