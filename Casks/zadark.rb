cask "zadark" do
    version "9.0"
    sha256 "7b69fccbdeaa8cde1b49ec95d0da6183f0b621889f7f808dd6292ae130c52081"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.pkg"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg: "ZaDark_#{version}.pkg"

    installer manual: "ZaDark"

    zap trash: [
        '/Applications/ZaDark',
    ]
end