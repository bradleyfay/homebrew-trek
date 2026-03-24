class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.6.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "253bd46fe4730eed29f98cdd2c5ed888a93089f6f950e708491411ae4d523ca6"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.6.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "26c4a4b2df1ceb6d930a3453804a57d1185a8086d31fa7b05bc64ae9570d985f"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
