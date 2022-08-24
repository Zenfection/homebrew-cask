cask "mamp-mod" do
  version "6.6.1"
  sha256 "b6adb62a742111a1f3f18bb07c5a184032e80bbc1ab049635f06871531648870"
  url "https://github.com/Zenfection/macos/releases/download/1.0/mamp.pro_#{version}.zip"
  
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Mamp.pro_#{version}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
