class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.46.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "9c3cffac6d67ccff07664fd746f62206baa5d62d81e985da0f948999ee7c6706"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.46.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "f68bfef065d06de5d25675f53cbbfd84f31c85a23930dfc9e7cdb0b32f5154d7"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
