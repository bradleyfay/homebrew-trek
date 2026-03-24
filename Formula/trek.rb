class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.20.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "afa2320de32169f4bce4a64b400cd21a827dfef34c109da2ed58ca23cc804250"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.20.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "96fa23c2a815bfd42f22b1bd6e747eff67951ea6b67d765bcf20a67b5bb71410"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
