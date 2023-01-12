cask "zadark" do
    version "7.5"
    sha256 "81c92dc3e37bafd7e88357d1d336846ad31051e6074adaabfec71367f5c6138d"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.zip"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "ZaDark"

    installer manual: "ZaDark"

    zap trash: [
        '/Applications/ZaDark',
    ]
end