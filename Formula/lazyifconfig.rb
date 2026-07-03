class Lazyifconfig < Formula
  desc "Terminal UI for inspecting local network state"
  homepage "https://github.com/choihunchul/lazyifconfig"
  license "MIT"
  version "0.2.24"

  on_macos do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.24/lazyifconfig-v0.2.24-x86_64-apple-darwin.tar.gz"
      sha256 "cd676a16653fe421c6181436226150552073eb1ed85d40a2d29b51fe2db68d6b"
    end

    on_arm do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.24/lazyifconfig-v0.2.24-aarch64-apple-darwin.tar.gz"
      sha256 "74201141793b5c5c9d1dffb47b5624e7701ce0e814e25c7778114153e7603908"
    end

  end

  on_linux do
    on_intel do
      url "https://github.com/choihunchul/lazyifconfig/releases/download/v0.2.24/lazyifconfig-v0.2.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7369c92aef613ade85105c1153edc618ce16933574dca2139879e4b1b9f317e"
    end

  end

  def install
    bin.install "lazyifconfig"
  end

  test do
    assert_predicate bin/"lazyifconfig", :exist?
  end
end
