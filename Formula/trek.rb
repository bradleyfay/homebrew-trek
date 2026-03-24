class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.48.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.48.1/trek-aarch64-apple-darwin.tar.gz"
      sha256 "9b0f93012ab810b0e760706fd06113528ee2902f484d9f6e10f0942d1048a774"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.48.1/trek-x86_64-apple-darwin.tar.gz"
      sha256 "39e1753e865d7f8806b3e0af23feb62218a4f8a2eaca0308021b25403d2bfa36"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end
