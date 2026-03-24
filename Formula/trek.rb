class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.7.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "7ab57bd53f7417b28682d25e92ae5e59d5973871471348c6890eba18de2f3706"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.7.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "d6262acaea784ffb2864341497104aab39b157c044af5a29beae78a718a7e111"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
