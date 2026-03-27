class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.61.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.2/trek-aarch64-apple-darwin.tar.gz"
      sha256 "efec64ceb331442f4dd98df61e1d0f4fa16464a0857784a389c758fd17e6afd5"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.2/trek-x86_64-apple-darwin.tar.gz"
      sha256 "e602bf1979451d5ebe880ffb2760b831ebf8691dc81803cb0c0bacc17594b9fd"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
