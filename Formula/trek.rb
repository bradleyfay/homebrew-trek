class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.65.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.65.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "de0979c040222bda92292f7f2a46bbbd8aa1978c3c38a2a348038389633d2c53"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.65.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "ae6a157e557cbebe201bfd51e261728d138aa02de76230283901b9117025a361"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
