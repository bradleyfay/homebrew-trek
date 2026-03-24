class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.19.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "b433edf717b40be11653d38bfe8676e505bfc22b511e0ab2c7777f89a5c7883e"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.19.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "3e3bd208e8bf03747caf4294321f6f544e376f630943bdff9c080244448ef460"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
