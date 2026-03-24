class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.47.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "859ac339f2895614ee04356bb048860406e5473daff2c3e90780c08f890bb04e"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.47.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "03c8327db922a5fa0a87d85d4d328c941c22565671130405334976071d47cb42"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
