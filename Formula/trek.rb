class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.67.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "447f660f8c1b9209e7593fa75bfbac6ba598c2fcb3e2eb9e5561cd1fa0a5a227"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.67.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "b6eb1ffffc062f2585f808b72782f08233a7365389fca3b031de1ae81bc3eaef"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
