cask "zadark" do
    version "4.11"
    sha256 "3271fa9762d7404cffc1836bd04b43f601a0e77ba7fd870d7b2e1a2ff740c2b9"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.zip"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg "ZaDark_#{version}.pkg"

installer script: {
    executable: "zadark.sh",
    sudo: true,
}

    uninstall detele:    "/Applications/ZaDark.app",
end