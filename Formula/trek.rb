class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.37.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "120197b68066f77311b00639ddad7e6d7e4b5c4227450b5f4f0fbc1748611c4b"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.37.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "3eccb907254b77d52a6d3e3f241dfd45428d6e27537cb191c14608740d54764b"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
