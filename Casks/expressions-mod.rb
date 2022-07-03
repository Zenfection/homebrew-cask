cask "expressions-mod" do
    version "1.3.5"
    sha256 "a0407cdcb205c38c303f1adf6b4c16db4731a0c660d5826244db20eb59c606f5"
  
    url "https://www.apptorium.com/public/products/expressions/releases/Expressions_#{version}.zip"
    name "Expressions"
    desc "Regular expressions manager app"
    homepage "https://www.apptorium.com/expressions"
  
    livecheck do
      url "https://www.apptorium.com/expressions/trial"
      regex(%r{href=.*?/Expressions-(\d+(?:\.\d+)*)\.zip}i)
    end
  
    depends_on macos: ">= :el_capitan"
  
    app "Expressions.app"
  
    zap trash: [
      "~/Library/Application Scripts/com.apptorium.Expressions-dm",
      "~/Library/Containers/com.apptorium.Expressions-dm",
    ]
  end
  Footer
  