cask "mamp-mod" do
  version "6.6.1"
  sha256 "1521b806f92e935aaf1efcf3933a5fdd14533b7056c268b77138bc44207e2c26"
  url "https://github.com/Zenfection/macos/releases/download/1.0/mamp.pro_#{version}.zip"
  

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Mamp.pro_#{version}.pkg"

installer script {
    executable: "mamp.sh"
    sudo: true
}


  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
