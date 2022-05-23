cask "zadark" do
    version "4.7"
    sha256 "d271afe05e9e12fe453171d6fd23c308b5e606cd42d692d0e096ce5b83d130b1"
    url "https://github.com/Zenfection/macos/releases/download/1.0/ZaDark_#{version}.pkg"
    name "ZaDark"
    desc "ZaDark là tiện ích mã nguồn mở giúp kích hoạt Dark Mode cho Zalo trên PC và Trình duyệt Web."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg "ZaDark_#{version}.pkg"
end