class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.22.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "d921d4ee01d8c4287638976fae2a72c50d0fb522155e5b171a9610e1c6b5cc35"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.22.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "d495028d164c19ba00509d117c05a21422af8ea777ab57a29ea2961d19af0ba9"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
