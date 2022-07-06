cask "expressions-mod" do
    version "1.3.6"
    sha256 "6eaa8584c77d66c0a536532cf23b2037b0b6fb830acdc41efc25df96d4794517"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Expressions_#{version}.dmg"
    name "Expressions"
    desc "Regular expressions manager app"
    homepage "https://github.com/zenfection/macos"
  
    depends_on macos: ">= :el_capitan"
  
    app "Expressions.app"
  
    zap trash: [
      "~/Library/Application Scripts/com.apptorium.Expressions-dm",
      "~/Library/Containers/com.apptorium.Expressions-dm",
    ]
  end