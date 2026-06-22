class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.17"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.17/lazyifconfig-v0.2.17-x86_64-apple-darwin.tar.gz"
      sha256 "dd5fda9a97b7e6401cb0c960cc35cee0a002bdf1500cf0c1004479c8dd5b607d"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.17/lazyifconfig-v0.2.17-aarch64-apple-darwin.tar.gz"
      sha256 "7701e76c0ccabde2d41d11584c8d69579ddc0eea69673249e398ef01e8a0a3e9"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.17/lazyifconfig-v0.2.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6cb5be6eb5dc09b95e4d50da74cc6edb87a3070fb4aae8b498dc669c336b222"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
