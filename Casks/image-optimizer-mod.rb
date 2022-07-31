cask "image-optimizer-mod" do
    version "2.8"
    sha256 "dbe3f635c4285e4008d9c1a1989c395274269a3a142d84e793d65b5d7461d3ee"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Image.Optimizer_#{version}.dmg"
    name "Image Optimizer"
    desc "ImageOptim is an image (PNG, JPG, TIF, GIF, BMP, PSD, HEIC) lossless compression software."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Image Optimizer.app"
end