class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.68.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "3235e8f2e4b9956a358f8527700ef75ee7c2bfa9370c732cba89e1fcd326cd2f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.68.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "f3df789950d2ca9b5594aacf65fdd51f105e3d2ab3f4847faa95989c16ead0e3"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
