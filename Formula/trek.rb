class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.62.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.62.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "267cf4f636e5125cab8f59c2e880c51a3281593acba9d84c68b06f4c3cd6d159"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.62.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "667260dce17d0580b761c0f201ede7a66b9b91ec638e56958fdf54da265ca745"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
