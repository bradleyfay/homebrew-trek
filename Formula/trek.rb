class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "f4344a58cf6535b61763f885e8a058245b93e7e02e7fe56409eb55d24be6ad8f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.61.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "966230918016cbc2171564afaac128f539bd97cae222822c77d0ad52c5a690e8"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
