cask "zadark" do
    version "11.5"
    sha256 "ede0f4a2a4dda61abfbfc92180dc20f4ecda2c725747a20457999cf1395e563e"
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