class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.10.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "182612f316f07fc99f69a507e306040df90add696412eda7ad784f8a40195539"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.10.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "a6ef8e4bc3e1369b1c36f5532c978b0b11574a3842a3459050a9e866fde48f61"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
