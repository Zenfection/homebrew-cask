cask "expressions-mod" do
    version "1.3.5"
    sha256 "a0407cdcb205c38c303f1adf6b4c16db4731a0c660d5826244db20eb59c606f5"
  
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
  Footer
  