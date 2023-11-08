cask "mamp-mod" do
  version "6.8.1"
  sha256 "5a4ab95716227ad9e9166c50024502ca9f89d9a522ec33061ece1c81d070a4b8"
  url "https://github.com/Zenfection/macos/releases/download/1.0/MAMP.PRO_#{version}.dmg"

  name "MAMP"
  desc "Web development solution with Apache, Nginx, PHP & MySQL"
  homepage "https://www.mamp.info/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "MAMP_MAMP_PRO_#{version}_REPACK.pkg"

  postflight do
    set_ownership ["/Applications/MAMP", "/Applications/MAMP PRO"]
  end

  uninstall pkgutil: "de.appsolute.installer.(mamp|mampacticon|mampendinstall|mamppro).pkg"
end
