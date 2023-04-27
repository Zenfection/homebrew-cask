cask "sketchup-mod" do
    version "2023,23.0.418"
    sha256 "0668a34f459aaf9fa3b2bf6111844d87772e96052437c755d9014dcde4125dac"
  
    # downloads can be found at https://www.sketchup.com/download/all
    url "https://github.com/Zenfection/macos/releases/download/1.0/SketchUp_#{version.csv.first}_#{version.csv.second}.dmg"
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