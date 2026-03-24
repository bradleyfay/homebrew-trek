class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.36.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "95e98204875f94e1ad84bc813cc723fa0e4b29c13ece49b37ed89e87d9f3a3aa"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.36.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "00f6d8d27fd9453167fc9b7a7fd12ea1b29f7dfe249eb559f72b49068b3eb806"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
