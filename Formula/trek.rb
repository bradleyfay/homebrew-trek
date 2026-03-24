class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.23.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "92916db7896a20cd8337d47f294219f592e9db0290c67a4f4db07ed920cb329f"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.23.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "9c0a64f383784f175b45289ab35b2a456f933ee70563191d303483fd15cb4d2b"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
