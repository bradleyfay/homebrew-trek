class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.12.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "f4c2a665fb4291c51ba821f9d3de0546dbeab6fdb2486163f4e439b0259276d2"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.12.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "d2f6c95e26584db27e1d9b506ae7c1f1ed75a820be2ccc895067f75e1d873f1c"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
