cask "mamp-mod" do
  version "6.6.3"
  sha256 "15652463ec8fef33ee3fd5d32477feacb10cbaa1694128eac45bbf63b044a8e5"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Mamp.Pro_#{version}.pkg"
  
  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Mamp.Pro_#{version}.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
