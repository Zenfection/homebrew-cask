cask "image-optimizer-mod" do
    version "2.7"
    sha256 "8939ccdf7e142c807fbc670e2bdd8f8177ce42e2c93fe38e23b9ef4d3a3aff36"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Image.Optimizer_#{version}.dmg"
    name "Image Optimizer"
    desc "ImageOptim is an image (PNG, JPG, TIF, GIF, BMP, PSD, HEIC) lossless compression software."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Image Optimizer.app"
end