class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.58.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "2c42d367cd1e9e7c9fa972f5c00b144211f86dd9db5d26329303ab790c4821d6"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.58.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "594fd42a6cf89174d8167349e767c8e62426d5b4b1522be352ac7201b77a3bd7"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
