cask "zadark" do
    version "9.1"
    sha256 "0ab493725304dbcf29dfa6ff1d02c0699ac8ade5d7d5c66640e9337940a04681"
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