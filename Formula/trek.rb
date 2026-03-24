class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.16.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "329d62adb47e2f37ae09270388e85fac582d3f1552ff4919b5231f8e174843f8"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.16.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "309942ec01c89359a7cc0450eb9d15385ff3f2770a5a3966352403bd9848cc6c"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
