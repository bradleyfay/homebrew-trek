class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.9.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "78af728d987ca7f85e2a2d274e6fa64cd091fbf3454dbbfd9529d55114d9123f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.9.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "0951630d5f1db971513a8588c590c6dc184994f5a308b5d7b73a655abf7033b4"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
