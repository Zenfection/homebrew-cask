cask "zadark" do
    version "6.0"
    sha256 "d84d4f3f8c23d6520360966d2fad2e1af0af25a64ce3f8312126d15176f88ace"
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