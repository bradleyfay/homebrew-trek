class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.39.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "f66f9be9ab3f96db48516816a0e51b2b1dae4e82925aa4c57b86e8766065a0c1"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.39.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "02eddd8897d7f62af5a483021ee794c078893d613307eaee0bec4213e657df32"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
