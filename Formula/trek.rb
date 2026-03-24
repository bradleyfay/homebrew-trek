class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.14.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "03a36262a02e248a71de08685a43b5fd56ed9b04118da1fc56df2eaf1c82fc4a"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.14.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "fbabbc7cc73e39b57b12822fd261083afe30a4e91613f2eb24f26708686e026e"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
