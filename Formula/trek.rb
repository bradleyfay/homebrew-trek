class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.62.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "0c5db42146a951ac49dec75488585bbbf4ea6f5f14aeda94ff5e8b0801822f9f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.62.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "588312c82b12a04450ec119e88a53263f50049217e47666a8f0f97b7a2741c4d"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
